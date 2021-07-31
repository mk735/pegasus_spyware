package com.lenovo.safecenter.systeminfo.ui.activity;

import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract;
import android.view.View;
import android.widget.BaseExpandableListAdapter;
import android.widget.ExpandableListView;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.platform.BaseTitleActivity;
import com.lenovo.safecenter.systeminfo.adapter.DialCommonPhoneExAdapter;
import com.lenovo.safecenter.systeminfo.entity.CommonNumber;
import com.lenovo.safecenter.systeminfo.service.CommonNumberService;
import com.lenovo.safecenter.utils.Const;
import java.util.HashMap;
import java.util.List;

public class CommonNumberActivity extends BaseTitleActivity {
    protected static final String TAG = CommonNumberActivity.class.getSimpleName();
    private ExpandableListView a;
    private DialCommonPhoneExAdapter b;
    private HashMap<String, List<CommonNumber>> c;

    /* access modifiers changed from: protected */
    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.common_number);
        setTitle(Integer.valueOf((int) R.drawable.rf_perf_title_right), R.string.number_space, (Integer) null);
        this.a = (ExpandableListView) findViewById(R.id.dialphone_exList);
        this.a.setGroupIndicator(null);
        this.a.setDivider(getResources().getDrawable(R.drawable.list_line));
        this.a.setChildDivider(getResources().getDrawable(R.drawable.list_line));
        this.c = CommonNumberService.getInstance().findAllCategoriesAndCommonNumber();
        this.b = new DialCommonPhoneExAdapter(this, this.c);
        this.a.setAdapter(this.b);
        this.a.setOnCreateContextMenuListener(this);
        this.a.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener() {
            /* class com.lenovo.safecenter.systeminfo.ui.activity.CommonNumberActivity.AnonymousClass1 */

            public final boolean onGroupClick(ExpandableListView parent, View v, int groupPosition, long id) {
                BaseExpandableListAdapter adapter = (BaseExpandableListAdapter) parent.getExpandableListAdapter();
                for (int i = 0; i < adapter.getGroupCount(); i++) {
                    if (i != groupPosition) {
                        CommonNumberActivity.this.a.collapseGroup(i);
                    }
                }
                if (CommonNumberActivity.this.a.isGroupExpanded(groupPosition)) {
                    CommonNumberActivity.this.a.collapseGroup(groupPosition);
                    return true;
                }
                CommonNumberActivity.this.a.expandGroup(groupPosition);
                CommonNumberActivity.this.a.setSelectedGroup(groupPosition);
                return true;
            }
        });
        this.a.setOnChildClickListener(new ExpandableListView.OnChildClickListener() {
            /* class com.lenovo.safecenter.systeminfo.ui.activity.CommonNumberActivity.AnonymousClass2 */

            public final boolean onChildClick(ExpandableListView parent, View v, int groupPosition, int childPosition, long id) {
                Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:" + ((CommonNumber) parent.getExpandableListAdapter().getChild(groupPosition, childPosition)).getPhoneNumber()));
                localIntent.setFlags(268435456);
                Const.mContext.startActivity(localIntent);
                return true;
            }
        });
    }

    public void addContact(String displayName, String phoneNumber) {
        long insertedContactId = ContentUris.parseId(getContentResolver().insert(ContactsContract.RawContacts.CONTENT_URI, new ContentValues()));
        ContentValues nameValues = new ContentValues();
        nameValues.put("raw_contact_id", Long.valueOf(insertedContactId));
        nameValues.put("mimetype", "vnd.android.cursor.item/name");
        nameValues.put("data2", displayName);
        getContentResolver().insert(ContactsContract.Data.CONTENT_URI, nameValues);
        ContentValues phoneValues = new ContentValues();
        phoneValues.put("raw_contact_id", Long.valueOf(insertedContactId));
        phoneValues.put("mimetype", "vnd.android.cursor.item/phone_v2");
        phoneValues.put("data1", phoneNumber);
        phoneValues.put("data2", (Integer) 2);
        getContentResolver().insert(ContactsContract.Data.CONTENT_URI, phoneValues);
    }

    @Override // com.lenovo.safecenter.platform.BaseTitleActivity
    public void onClick(View v) {
        super.onClick(v);
        switch (v.getId()) {
            case R.id.base_title_left:
                finish();
                return;
            default:
                return;
        }
    }
}
