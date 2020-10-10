package com.example.firstapplication.javaClass;

import android.graphics.Color;

import com.example.firstapplication.R;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jxl.read.biff.BiffException;

public class Chart extends ReadExcel {
    public Chart(String filePath) {
        super(filePath);
    }

    public void Draw(LineChart chart, float[] x, float[] y) {
        // 你要渲染的数据
        //float[] dataObjects = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
        List<Entry> entries = new ArrayList<>();
        // 循环你的数据，向图表中添加点
        for (int i = 0; i < x.length; i++) {
            // turn your data into Entry objects
            // 图形横纵坐标默认为float形式，如果想展示文字形式，需要自定义适配器。后边会讲，这个地方传进去的X轴Y轴值都是float类型
            entries.add(new Entry(x[i], y[i]));
        }

        LineDataSet dataSet = new LineDataSet(entries, "Label"); // 图表绑定数据，设置图表折现备注

        dataSet.setColor(Color.RED); // 设置折线图颜色
        dataSet.setValueTextColor(Color.BLUE); // 设置数据值的颜色

        Description description = chart.getDescription();
        description.setText("电价"); // 设置右下角备注

        LineData lineData = new LineData(dataSet);

        chart.setData(lineData); // 图表绑定数据值
        chart.invalidate(); // 刷新图表

    }

    public void Draw(LineChart chart, List _list) {
        List<Entry> entries = new ArrayList<>();
        // 循环你的数据，向图表中添加点
        for (int i = 0; i < _list.size(); i++) {
            // turn your data into Entry objects
            // 图形横纵坐标默认为float形式，如果想展示文字形式，需要自定义适配器。后边会讲，这个地方传进去的X轴Y轴值都是float类型
            entries.add(new Entry(Float.parseFloat(String.valueOf(((String) _list.get(i)).charAt(0))),
                    Float.parseFloat(String.valueOf(((String) _list.get(i)).charAt(1)))));
        }

        LineDataSet dataSet = new LineDataSet(entries, "Label"); // 图表绑定数据，设置图表折现备注

        dataSet.setColor(Color.RED); // 设置折线图颜色
        dataSet.setValueTextColor(Color.BLUE); // 设置数据值的颜色

        Description description = chart.getDescription();
        description.setText("电价"); // 设置右下角备注

        LineData lineData = new LineData(dataSet);

        chart.setData(lineData); // 图表绑定数据值
        chart.invalidate(); // 刷新图表

    }

    public void DrawExcelData(LineChart lineChart) throws BiffException, IOException {
        readExcel();
        Draw(lineChart, list);
    }
}
