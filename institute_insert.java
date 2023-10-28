package com.example.first1;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

public class institute_insert extends AppCompatActivity {
EditText institute_name;
EditText institute_address;
EditText institute_phone;
EditText institute_website;
EditText institute_longi;
EditText institute_lati;
EditText institute_date;
EditText institute_course;
EditText institute_description;
RequestQueue requestQueue;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_institute_insert);
        institute_name=findViewById(R.id.institute_name);
        institute_address=findViewById(R.id.institute_address);
        institute_phone=findViewById(R.id.institute_phone);
        institute_website=findViewById(R.id.institute_website);
        institute_longi=findViewById(R.id.institute_longi);
        institute_lati=findViewById(R.id.institute_lati);
        institute_date=findViewById(R.id.institute_date);
        institute_course=findViewById(R.id.institute_course);
        institute_description=findViewById(R.id.institute_description);
        requestQueue= Volley.newRequestQueue(this);
    }
    public void addInstitute(View view){
        String name=institute_name.getText().toString();
        String address=institute_address.getText().toString();
        String phone=institute_phone.getText().toString();
        String website=institute_website.getText().toString();
        String longi=institute_longi.getText().toString();
        String lati=institute_lati.getText().toString();
        String date=institute_date.getText().toString();
        String course=institute_course.getText().toString();
        String description=institute_description.getText().toString();
        String url="http://192.168.198.142/crud/addinstitute.php?name="+name+"&address="+address+"&phone="+phone+"&website="+website+"&longi="+longi+
                "&lati="+lati+"&date="+date+"&course="+course+"&description="+description;
        StringRequest stringRequest=new StringRequest(Request.Method.GET, url, new Response.Listener<String>() {
            @Override
            public void onResponse(String response) {
                Toast.makeText(institute_insert.this, "Inserted", Toast.LENGTH_SHORT).show();
            }
        }, new Response.ErrorListener() {
            @Override
            public void onErrorResponse(VolleyError error) {
                Toast.makeText(institute_insert.this, "Not Inserted", Toast.LENGTH_SHORT).show();

             }
        });
requestQueue.add(stringRequest);

    }
}