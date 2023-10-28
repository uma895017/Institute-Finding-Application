package com.example.first1;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.ArrayList;

public class listviewproject extends AppCompatActivity {
    ListView ll;
    Button enquiry;
    AlertDialog.Builder ad;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_listviewproject);
        ll = findViewById(R.id.list);
        Intent ii=getIntent();
        if(ii!=null) {
            data = (ArrayList<ArrayList<String>>) ii.getSerializableExtra("key");
        }
        else {
            Toast.makeText(this, "Error in List", Toast.LENGTH_SHORT).show();
        }
        cc c1=new cc();
        if(data!=null)
            ll. setAdapter(c1);
        else
            Toast.makeText(this, "it is null", Toast.LENGTH_SHORT).show();
    }
    ArrayList<ArrayList<String>>data;
    class cc extends BaseAdapter{


        @Override
        public int getCount() {
            return data.size();
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            ad=new AlertDialog.Builder(listviewproject.this);
            LayoutInflater inflater=getLayoutInflater();
            view=inflater.inflate(R.layout.adpater_yt_img,viewGroup,false);
            TextView tv11 = (TextView) view.findViewById(R.id.yx1);
            tv11.setText(data.get(i).get(0));
            tv11.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    String address="";
                    String description="";
                    String a2="";
                    address="Address :- \n"+data.get(i).get(1)+"\n";
                    description="Description :- \n"+data.get(i).get(2);
                    a2=address+description;
                    ad.setIcon(R.drawable.ic_launcher_foreground);
                    ad.setTitle("Institute details");
                    String call=""+data.get(i).get(3);
                    String website=""+data.get(i).get(4);
                    ad.setPositiveButton("CALL", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            Intent intent=new Intent(Intent.ACTION_DIAL);
                            intent.setData(Uri.parse("tel://"+call));
                            startActivity(intent);
                        }
                    });
                    ad.setNegativeButton("WEBSITE", new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                            Intent intent=new Intent(Intent.ACTION_VIEW);
                            intent.setData(Uri.parse(website));
                            startActivity(intent);
                        }
                    });
                    ad.setMessage(a2);
                    AlertDialog a=ad.create();
                    a.show();
                }
            });
            enquiry=(Button)view.findViewById(R.id.Enquiry);
             enquiry.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    EditText et_name;
                    EditText et_email;
                    EditText et_number;
                    Button eq;
                    Dialog d = new Dialog(listviewproject.this);
                    d.setContentView(R.layout.activity_enquiry_intent);
                    d.show();
                    et_name=(EditText) d.findViewById(R.id.eq_name);
                    et_email=(EditText) d.findViewById(R.id.eq_email);
                    eq=(Button) d.findViewById(R.id.enquiry1);
                    et_number=(EditText) d.findViewById(R.id.eq_number);
                    RequestQueue requestQueue= Volley.newRequestQueue(listviewproject.this);
                      eq.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View view) {
                            String name="";
                            String email="";
                            String number="";
                            name=et_name.getText().toString();
                            email=et_email.getText().toString();
                            number=et_number.getText().toString();

                            String url="http://192.168.198.142/Crud/eq_insert.php?name="+name+"&email="+email+"&number="+number;
                            StringRequest stringRequest=new StringRequest(Request.Method.GET, url, new Response.Listener<String>() {
                                @Override
                                public void onResponse(String response) {
                                    Toast.makeText(listviewproject.this, "Inserted", Toast.LENGTH_SHORT).show();
                                    d.dismiss();
                                }
                            },
                                    new Response.ErrorListener() {
                                        @Override
                                        public void onErrorResponse(VolleyError error) {
                                            Toast.makeText(listviewproject.this, "Not Inserted", Toast.LENGTH_SHORT).show();
                                        }
                                    });
                            requestQueue.add(stringRequest);
                        }
                    });
                }
            });
            return  view;
        }
    }
}