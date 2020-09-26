package com.example.firstapplication.ui.home;

import android.app.Activity;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProviders;

import com.example.firstapplication.R;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.data.Entry;
import com.github.mikephil.charting.data.LineData;
import com.github.mikephil.charting.data.LineDataSet;

import java.util.ArrayList;
import java.util.List;

public class HomeFragment extends Fragment {
    //private Activity activity;
    //private ListView companyListView;
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        View view = inflater.inflate(R.layout.fragment_home, container, false);
        //companyListView = (ListView) view.findViewById(R.id.chart);
        LineChart chart = (LineChart) view.findViewById(R.id.chart);
        // 你要渲染的数据
        float[] dataObjects = {1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
        List<Entry> entries = new ArrayList<>();
        // 循环你的数据，向图表中添加点
        for (float data : dataObjects) {
            // turn your data into Entry objects
            // 图形横纵坐标默认为float形式，如果想展示文字形式，需要自定义适配器。后边会讲，这个地方传进去的X轴Y轴值都是float类型
            entries.add(new Entry(data, data));
        }

        LineDataSet dataSet = new LineDataSet(entries, "Label"); // 图表绑定数据，设置图表折现备注

        dataSet.setColor(Color.RED); // 设置折线图颜色
        dataSet.setValueTextColor(Color.BLUE); // 设置数据值的颜色

        //Description description = chart.getDescription();
        //description.setText("..."); // 设置右下角备注

        LineData lineData = new LineData(dataSet);

        chart.setData(lineData); // 图表绑定数据值
        chart.invalidate(); // 刷新图表

        return view;
    }
}
