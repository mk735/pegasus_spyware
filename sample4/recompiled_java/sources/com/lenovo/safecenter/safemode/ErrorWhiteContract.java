package com.lenovo.safecenter.safemode;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.util.Patterns;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.EditText;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.adapter.whiteContractAdapter;
import com.lenovo.safecenter.database.AppDatabase;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.support.Contract;
import com.lenovo.safecenter.utils.ContractHelpUtils;
import com.lenovo.safecenter.utils.DataHelpUtils;
import com.lenovo.safecenter.utils.TrackEvent;
import java.util.ArrayList;
import java.util.List;

public class ErrorWhiteContract extends Activity {
    public static List<Contract> list = new ArrayList();
    ContractHelpUtils a;
    private ListView b;
    private TextView c;
    private TextView d;
    private BaseAdapter e;
    private boolean f = false;
    private int g = 0;

    static /* synthetic */ void d(ErrorWhiteContract x0) {
        final Contract contract = list.get(x0.g);
        String name = contract.getName();
        if (contract.getName() == null) {
            name = contract.getPhoneNumber();
        }
        new CustomDialog.Builder(x0).setTitle(name).setItems(new String[]{x0.getString(R.string.delete), x0.getString(R.string.safemode_callto), x0.getString(R.string.replay_sms), x0.getString(R.string.mutil_edit)}, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (which) {
                    case 0:
                        ErrorWhiteContract.list.remove(ErrorWhiteContract.this.g);
                        ErrorWhiteContract.this.b.invalidateViews();
                        ContractHelpUtils.sendBraodcast(ErrorWhiteContract.this, "com.lenovo.securityperson.change");
                        return;
                    case 1:
                        try {
                            ErrorWhiteContract.this.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + contract.getPhoneNumber())));
                            return;
                        } catch (Exception e) {
                            Toast.makeText(ErrorWhiteContract.this, (int) R.string.opensms_error, 0).show();
                            return;
                        }
                    case 2:
                        try {
                            ErrorWhiteContract.this.startActivity(new Intent("android.intent.action.SENDTO", Uri.parse("smsto:" + contract.getPhoneNumber())));
                            return;
                        } catch (Exception e2) {
                            Toast.makeText(ErrorWhiteContract.this, (int) R.string.opensms_error, 0).show();
                            return;
                        }
                    case 3:
                        ErrorWhiteContract.this.showChangeContract();
                        return;
                    case 4:
                        ErrorWhiteContract errorWhiteContract = ErrorWhiteContract.this;
                        Contract contract = contract;
                        ErrorWhiteContract.f(errorWhiteContract);
                        return;
                    default:
                        return;
                }
            }
        }).create().show();
    }

    static /* synthetic */ void f(ErrorWhiteContract x0) {
        new CustomDialog.Builder(x0).setTitle(R.string.notify).setMessage(R.string.notifycopy).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass9 */

            public final void onClick(DialogInterface dialog, int which) {
                Toast.makeText(ErrorWhiteContract.this, (int) R.string.waitting_background, 0).show();
                Log.i(AppDatabase.CONTENT, ErrorWhiteContract.this.getString(R.string.waitting_background));
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).create().show();
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.whitecontract);
        ((TextView) findViewById(R.id.txt_title)).setText(R.string.privacy_safe);
        this.b = (ListView) findViewById(R.id.safemode_whitecontractlist);
        this.d = (TextView) findViewById(R.id.private_empty_textview);
        this.c = (TextView) findViewById(R.id.safemode_whitecontract_count);
        this.a = new ContractHelpUtils();
        DataHelpUtils.allActivity.add(this);
        this.b.setEmptyView(this.d);
        onClick();
    }

    public String getWhiteCount(int count) {
        return String.format(getString(R.string.whitecount), Integer.valueOf(count));
    }

    public Dialog onCreateDialog(int id, Bundle args) {
        switch (id) {
            case 1:
                return new CustomDialog.Builder(this).setTitle(getString(R.string.quick_addtitle)).setItems(R.array.private_quick_add, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass1 */

                    public final void onClick(DialogInterface dialog, int which) {
                        switch (which) {
                            case 0:
                                Intent callIntent = new Intent(ErrorWhiteContract.this, ErrorAddContract.class);
                                callIntent.putExtra("fromtype", 1);
                                ErrorWhiteContract.this.startActivity(callIntent);
                                return;
                            case 1:
                                Intent smsIntent = new Intent(ErrorWhiteContract.this, ErrorAddContract.class);
                                smsIntent.putExtra("fromtype", 2);
                                ErrorWhiteContract.this.startActivity(smsIntent);
                                return;
                            case 2:
                                Intent contractIntent = new Intent(ErrorWhiteContract.this, ErrorAddContract.class);
                                contractIntent.putExtra("fromtype", 0);
                                ErrorWhiteContract.this.startActivity(contractIntent);
                                return;
                            case 3:
                                ErrorWhiteContract.this.showAddDialog();
                                return;
                            default:
                                return;
                        }
                    }
                }).create();
            default:
                return null;
        }
    }

    public void showAddDialog() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.hand_number);
        ((TextView) view.findViewById(R.id.safemode_dailog_title2)).setText(R.string.hand_name);
        pwd.setInputType(144);
        pwd2.setInputType(144);
        new CustomDialog.Builder(this).setTitle(R.string.privacy_mode_set).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
                if (pwd.getText() == null || pwd.getText().toString().trim().equals("")) {
                    Toast.makeText(ErrorWhiteContract.this, (int) R.string.hand_number_null, 0).show();
                } else if (Patterns.PHONE.matcher(pwd.getText().toString()).matches()) {
                    String name = null;
                    if (pwd2.getText() != null && !pwd2.getText().toString().trim().equalsIgnoreCase("")) {
                        name = pwd2.getText().toString();
                    }
                    Contract conAdd = new Contract();
                    conAdd.setName(name);
                    conAdd.setPhoneNumber(pwd.getText().toString());
                    conAdd.setRealnumber(ErrorWhiteContract.this.a.getRealPhoneNumber(pwd.getText().toString()));
                    ContractHelpUtils.sendBraodcast(ErrorWhiteContract.this, "com.lenovo.securityperson.change");
                    ErrorWhiteContract.list.add(conAdd);
                    ErrorWhiteContract.this.initDate();
                    new Thread() {
                        /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass4.AnonymousClass1 */

                        public final void run() {
                        }
                    }.start();
                } else {
                    Toast.makeText(ErrorWhiteContract.this, (int) R.string.hand_number_error, 0).show();
                }
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public void onClick() {
        this.c.setOnClickListener(new View.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass5 */

            public final void onClick(View v) {
                ErrorWhiteContract.this.f = false;
                ErrorWhiteContract.this.showDialog(1);
            }
        });
        this.b.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass6 */

            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Contract con = (Contract) ErrorWhiteContract.this.b.getItemAtPosition(position);
                if (!ErrorWhiteContract.this.f) {
                    ErrorWhiteContract.this.g = position;
                    ErrorWhiteContract.d(ErrorWhiteContract.this);
                }
                if (ErrorWhiteContract.this.f) {
                    if (con.isSelect()) {
                        con.setSelect(false);
                    } else {
                        con.setSelect(true);
                    }
                    ErrorWhiteContract.this.b.invalidateViews();
                }
            }
        });
    }

    public void showChangeContract() {
        View view = LayoutInflater.from(this).inflate(R.layout.safemode_input_password, (ViewGroup) null);
        final EditText pwd = (EditText) view.findViewById(R.id.safemode_input_pwd);
        final EditText pwd2 = (EditText) view.findViewById(R.id.safemode_input_pwd_again);
        ((TextView) view.findViewById(R.id.safemode_dailog_title1)).setText(R.string.hand_name);
        ((TextView) view.findViewById(R.id.safemode_dailog_title2)).setText(R.string.hand_number);
        pwd.setInputType(144);
        pwd2.setInputType(144);
        Contract con = list.get(this.g);
        if (con.getName() == null || con.getName().equals("")) {
            pwd.setText("");
        } else {
            pwd.setText(con.getName());
        }
        pwd2.setText(con.getPhoneNumber());
        new CustomDialog.Builder(this).setTitle(R.string.mutil_edit).setContentView(view).setPositiveButton(R.string.sumbit, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int which) {
                if (pwd2.getText().toString().equals("") || !Patterns.PHONE.matcher(pwd2.getText().toString()).matches()) {
                    Toast.makeText(ErrorWhiteContract.this, (int) R.string.setting_pwdfail, 0).show();
                    return;
                }
                String number = pwd2.getText().toString();
                String name = pwd.getText().toString();
                if (pwd.getText().toString().equals("")) {
                    name = null;
                }
                ErrorWhiteContract.list.get(ErrorWhiteContract.this.g).setPhoneNumber(number);
                ErrorWhiteContract.list.get(ErrorWhiteContract.this.g).setName(name);
                ErrorWhiteContract.this.b.invalidateViews();
                Toast.makeText(ErrorWhiteContract.this, (int) R.string.setting_pwdok, 0).show();
            }
        }).setNegativeButton(R.string.safemode_cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.safemode.ErrorWhiteContract.AnonymousClass10 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public void initDate() {
        this.e = new whiteContractAdapter(this, list, this.f);
        this.b.setAdapter((ListAdapter) this.e);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        initDate();
        TrackEvent.trackResume(this);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        TrackEvent.trackPause(this);
        super.onPause();
    }

    public boolean onOptionsItemSelected(MenuItem item) {
        switch (item.getItemId()) {
            case 0:
                List<Contract> select_list = new ArrayList<>();
                for (int i = list.size() - 1; i >= 0; i--) {
                    if (list.get(i).isSelect()) {
                        select_list.add(list.get(i));
                        list.remove(i);
                    }
                }
                if (select_list.size() > 0) {
                    ContractHelpUtils.sendBraodcast(this, "com.lenovo.securityperson.change");
                    this.f = false;
                    this.e = new whiteContractAdapter(this, list, false);
                    this.b.setAdapter((ListAdapter) this.e);
                    break;
                }
                break;
            case 4:
                this.f = true;
                this.e = new whiteContractAdapter(this, list, this.f);
                this.b.setAdapter((ListAdapter) this.e);
                break;
            case 5:
                for (Contract con : list) {
                    con.setSelect(true);
                }
                this.b.invalidateViews();
                break;
            case 6:
                for (Contract con2 : list) {
                    con2.setSelect(false);
                }
                this.b.invalidateViews();
                break;
        }
        return super.onOptionsItemSelected(item);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4 || !this.f) {
            return false;
        }
        for (Contract con : list) {
            con.setSelect(false);
        }
        this.f = false;
        this.e = new whiteContractAdapter(this, list, this.f);
        this.b.setAdapter((ListAdapter) this.e);
        return true;
    }
}
