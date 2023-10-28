package com.example.first1;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import org.json.JSONArray;
import org.json.JSONException;

import java.util.ArrayList;

public class app_project extends AppCompatActivity {
ImageView java;
RequestQueue req;
ArrayList<ArrayList<String>> arrayList;
EditText et11;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_app_project);
        java=(ImageView) findViewById(R.id.java);
        req =Volley.newRequestQueue(this);
        et11=(EditText)findViewById(R.id.et11);

        java.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Toast.makeText(app_project.this, "Clicked on Java", Toast.LENGTH_SHORT).show();
            }
        });
    }
    public void search(View view){
        arrayList=new ArrayList<>();
        String et111=et11.getText().toString();
        String url = "http://192.168.1.3/Crud/project.php?sel="+et111;
        StringRequest
                stringRequest
                = new StringRequest(
                Request.Method.GET,
                url,
                new Response.Listener<String>() {
                    @Override
                    public void onResponse(String response) {
                        try {
                            JSONArray js=new JSONArray(response);
//                            String res="";
//                          tv11.setText(response);
                            for(int i=0;i<js.length();i++) {
                                ArrayList<String> tt=new ArrayList<>();
                                JSONArray js1 = js.getJSONArray(i);
                                tt.add(js1.getString(1));
                                tt.add(js1.getString(2));
                                tt.add(js1.getString(9));
                                tt.add(js1.getString(3));
                                tt.add(js1.getString(4));
//                                res+=js1.getString(1);
                                arrayList.add(tt);
//                             String a="";
//                                for(int j=0;j<js1.length();++j) {
//                           a+=js1.getString(i);
                           }
//                            tv11.setText(res);
//                                tv11.setText(a);
//                                aa[i]=js1.getString(i);
//                                for(String aa1:aa){
//                                    if(aa1!=null){
////                                        tv11.setText(aa1);
//                                    }
//                                    else{
//                                        Toast.makeText(app_project.this, "Error in JS1", Toast.LENGTH_SHORT).show();
//                                    }
//                                }
//                                for(int j=0;j<js1.length();++j) {
//                                    tt.add(js1.getString(i));
//                                    arrayList.add(tt);
//                                }
//                            }
                                 Intent aa=new Intent(app_project.this,listviewproject.class);
                                 aa.putExtra("key",arrayList);
                                 startActivity(aa);
//                                 for(String a:arrayList){
////                                     tv11.setText(a);
//                                     aa.putExtra("key",a);
//                                 }

//                                 tv11.setText(js1.getString(2));
                            }
                         catch (JSONException e) {
                            throw new RuntimeException(e);
                        }
                    }
                },
                new Response.ErrorListener() {
                    @Override
                    public void onErrorResponse(VolleyError error) {
                    }
                });
        req.add(stringRequest);
    }
public void addinstitute(View view){
        Intent ii=new Intent(app_project.this,institute_insert.class);
        startActivity(ii);
}
    }