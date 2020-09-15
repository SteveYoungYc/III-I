#include <Arduino.h>

enum Dir_e {
    forward = 0,
    backward,
    left,
    right
};

class Motor {
private:
    int motor_IO_A;
    int motor_IO_B;
    int PWM_IO;
public:
    void Reset(int IO_A, int IO_B, int PWM) {
        this->motor_IO_A = IO_A;
        this->motor_IO_B = IO_B;
        this->PWM_IO = PWM;
        pinMode(motor_IO_A, OUTPUT);
        pinMode(motor_IO_B, OUTPUT);
        pinMode(PWM_IO, OUTPUT);
    }

    void SetOneMotorDirSpeed(bool dir, int speed);
    void Stop();
};

void Motor::SetOneMotorDirSpeed(bool dir, int speed) {
    digitalWrite(motor_IO_A, dir);
    digitalWrite(motor_IO_B, !dir);
    analogWrite(PWM_IO, speed);
}

void Motor::Stop() {
    digitalWrite(motor_IO_A, LOW);
    digitalWrite(motor_IO_B, LOW);
}

class BlueTooth {
private:
    int value;
    Motor motorLeft;
    Motor motorRight;

    void getValue() { value = Serial.read(); }

public:
    void Reset();

    void SetCarDirSpeed(Dir_e dir, int speed);

    void Control();
};

void BlueTooth::Reset() {
    motorLeft.Reset(8, 9, 6);
    motorRight.Reset(11, 12, 5);
    Serial.begin(9600);
}

void BlueTooth::SetCarDirSpeed(Dir_e dir, int speed) {
    switch (dir) {
        case left:
            motorLeft.SetOneMotorDirSpeed(1, speed);
            motorRight.SetOneMotorDirSpeed(1, speed);
            break;
        case right:
            motorLeft.SetOneMotorDirSpeed(0, speed);
            motorRight.SetOneMotorDirSpeed(0, speed);
            break;
        case backward:
            motorLeft.SetOneMotorDirSpeed(0, speed);
            motorRight.SetOneMotorDirSpeed(1, speed);
            break;
        case forward:
            motorLeft.SetOneMotorDirSpeed(1, speed);
            motorRight.SetOneMotorDirSpeed(0, speed);
            break;
    }
}

void BlueTooth::Control() {
    getValue();
    switch (value) {
        case 'A':
            SetCarDirSpeed(forward, 150);
            break;
        case 'C':
            SetCarDirSpeed(right, 150);
            break;
        case 'E':
            SetCarDirSpeed(backward, 150);
            break;
        case 'G':
            SetCarDirSpeed(left, 150);
            break;
        case -1:
            motorLeft.Stop();
            motorRight.Stop();
            break;
    }
}

BlueTooth blueTooth;
int init_count = 0;
bool start_flag = false;

void setup() {
    blueTooth.Reset();
    init_count = 0;
}

void loop() {
    if(init_count <= 12) init_count++;

    int value = Serial.read();
    Serial.println(value);
    delay(100);

    if(init_count >= 12) blueTooth.Control();
}
