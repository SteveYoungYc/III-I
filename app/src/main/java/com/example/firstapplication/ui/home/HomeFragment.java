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
import com.example.firstapplication.javaClass.DrawChart;
import com.github.mikephil.charting.charts.LineChart;
import com.github.mikephil.charting.components.Description;
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
        float[] x = new float[]{1.0f, 2.0f, 3.0f, 4.0f, 5.0f};
        float[] y = new float[]{1.0f, -3.0f, 3.0f, 4.0f, 8.0f};
        DrawChart.draw(chart, x, y);
        return view;
    }
}
