package cn.edu.pku.pkuwalkerhost;

import android.Manifest;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.database.Cursor;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.provider.OpenableColumns;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.FileProvider;
import android.support.v7.app.ActionBar;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.RingtonePreference;
import android.text.TextUtils;
import android.view.MenuItem;
import android.support.v4.app.NavUtils;
import android.widget.Toast;

import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

public class SettingsActivity extends PreferenceActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.app_settings);
        setup_triggers();
    }
    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent resultIntent){
        if(requestCode==0 && resultCode==RESULT_OK){
            Toast toast = new Toast(getApplicationContext());
            try {
                Uri uri = resultIntent.getData();
                InputStream input = getContentResolver().openInputStream(uri);
                File dir = getFilesDir();
                File f = new File(dir,"data.db");
                FileOutputStream output = new FileOutputStream(f);
                byte bt[] = new byte[1024];
                int c;
                while ((c = input.read(bt)) > 0){
                    output.write(bt, 0, c);
                }
                input.close();
                output.close();
//                System.exit(0);
                android.os.Process.killProcess(android.os.Process.myPid());
            }catch (Exception e){
                toast.makeText(getApplicationContext(),e.toString(),Toast.LENGTH_LONG).show();
            }
        }
        finish();
    }
    private void setup_triggers(){
        findPreference("pref_export_db").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference preference) {
                String authority = "cn.edu.pku.pkuwalkerhost.fileprovider";
                String type = "*/*";
                String title = "告诉你们一点，人生的经验";
                try{
                    File dir = getFilesDir();
                    File db = new File(dir,"data.db");
                    Uri uri = FileProvider.getUriForFile(getApplicationContext(),authority,db);
                    Intent share = new Intent(Intent.ACTION_SEND);
                    share.setType(type);
                    share.putExtra(Intent.EXTRA_STREAM,uri);
                    startActivity(Intent.createChooser(share, title));
                }catch (Exception e){
                    Toast toast = new Toast(getApplicationContext());
                    toast.makeText(getApplicationContext(),e.toString(),Toast.LENGTH_LONG).show();
                }
                return false;
            }
        });
        findPreference("pref_import_db").setOnPreferenceClickListener(new Preference.OnPreferenceClickListener() {
            @Override
            public boolean onPreferenceClick(Preference preference) {
                String type = "*/*";
                String title = "你们啊,还要学习一个";
                Toast toast = new Toast(getApplicationContext());
                toast.makeText(getApplicationContext(),"导入文件后App需要自动退出.请手动重启后选择旧用户",Toast.LENGTH_LONG).show();
                try{
                    Intent share = new Intent(Intent.ACTION_GET_CONTENT);
                    share.setType(type);
                    share.addCategory(Intent.CATEGORY_OPENABLE);
                    startActivityForResult(share,0);
                }catch (Exception e){
                    toast.makeText(getApplicationContext(),e.toString(),Toast.LENGTH_LONG).show();
                }
                return false;
            }
        });
    }
}
