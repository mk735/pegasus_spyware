package com.lenovo.safecenter.utils;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.lenovo.safecenter.MainTab.FirstUsePasswordSettingActivity;
import com.lenovo.safecenter.R;
import com.lenovo.safecenter.dialog.CustomDialog;
import com.lenovo.safecenter.safemode.SofeModeMain;
import com.lenovo.safecenter.utils.updateLab.AutoUpdateLabManager;

public class DialogUtil {
    public static final int ID_MANUAL_OPTIMIZATION_PROTECT_THIEF = 0;
    public static final int ID_NO_ACTION = 2;
    public static final int NOTICE_DIALOG_DOWNLOAD_LECLOUD = 3;
    public static final int NOTICE_DIALOG_KILL_VIRUS = 1;
    private static CustomDialog a;
    private static CustomDialog b = null;
    private static int c = 0;

    public interface ModifyPasswordDialogListener {
        void onModifyPasswordCancel(int i);

        void onModifyPasswordOk(int i, String str);
    }

    public interface SettingFloatNumberDialogListener {
        void onSettingFloatNumberDialogCancel(int i, Float f);

        void onSettingFloatNumberDialogOK(int i, Float f);
    }

    public interface SettingNumberDialogListener {
        void onSettingNumberDialogCancel(int i, int i2);

        void onSettingNumberDialogOK(int i, int i2);
    }

    public interface WarnDialogListener {
        void onWarnDialogCancel(int i);

        void onWarnDialogOk(int i);
    }

    public static void dismissShowPwdDialog() {
        if (a != null) {
            a.dismiss();
        }
    }

    public static void showPwdDialog(final String action, final Context context) {
        dismissShowPwdDialog();
        if (PwdUtil.hasPassword(context)) {
            View view = LayoutInflater.from(context).inflate(R.layout.input_password_content, (ViewGroup) null);
            final TextView message = (TextView) view.findViewById(R.id.txt_message);
            message.setText(R.string.input_privacy_pwd);
            final EditText edit = (EditText) view.findViewById(R.id.edt_input_pwd);
            a = new CustomDialog.Builder(context).setTitle(R.string.input_pwd).setContentView(view).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass9 */

                public final void onClick(DialogInterface dialog, int which) {
                    String newPwd = edit.getText().toString();
                    if (PwdUtil.checkPassword(context, newPwd)) {
                        if (action.equals(Const.ACTION_MODIFY_PASSWORD_USE_PRE_PASSWORD)) {
                            WflUtils.startSettingPasswordActivity(context, Const.ACTION_MODIFY_PASSWORD_USE_PRE_PASSWORD);
                            DialogUtil.a.dismiss();
                            return;
                        }
                        Intent i = new Intent(action);
                        if (action.equals(Const.ACTION_JUMP_RPIVACY_SAFE)) {
                            WflUtils.jumpPrivatezoneOrDownloadpage(context);
                            DialogUtil.a.dismiss();
                        } else if (action.equals(Const.ACTION_JUMP_APP_LOCK)) {
                            WflUtils.jumpAppLockOrDownloadpage(context);
                            DialogUtil.a.dismiss();
                        } else if (action.equals(Const.ACTION_JUMP_KID_MODE)) {
                            WflUtils.jumpKidModeOrDownloadpage(context);
                            DialogUtil.a.dismiss();
                        } else {
                            context.startActivity(i);
                            DialogUtil.a.dismiss();
                        }
                    } else if (newPwd.length() == 0) {
                        message.setText(R.string.error_tips_null);
                        edit.startAnimation(AnimationUtils.loadAnimation(context, R.anim.shake));
                    } else if (!action.equals(Const.ACTION_JUMP_RPIVACY_SAFE) || !DataHelpUtils.execService("pwd", context).equals(newPwd)) {
                        edit.startAnimation(AnimationUtils.loadAnimation(context, R.anim.shake));
                        edit.setText("");
                        message.setText(R.string.pwd_error_tips);
                    } else {
                        Intent i2 = new Intent(context, SofeModeMain.class);
                        i2.putExtra("pwd", newPwd);
                        i2.addFlags(8388608);
                        context.startActivity(i2);
                        DialogUtil.a.dismiss();
                    }
                }
            }, false).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass1 */

                public final void onClick(DialogInterface dialog, int which) {
                    DialogUtil.a.dismiss();
                }
            }).show();
        }
    }

    public static void showPasswordQuestionDialog(final Context context, final int id, String question, String answer) {
        View view = LayoutInflater.from(context).inflate(R.layout.dialog_retrieve_password, (ViewGroup) null);
        TextView questionTv = (TextView) view.findViewById(R.id.tv_retrieve_question);
        final EditText answerEt = (EditText) view.findViewById(R.id.et_retrieve_answer);
        String title = null;
        switch (id) {
            case 1:
                title = context.getString(R.string.retrieve_password_text);
                break;
        }
        questionTv.setText(question);
        b = new CustomDialog.Builder(context).setTitle(title).setContentView(view).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass11 */

            public final void onClick(DialogInterface dialog, int which) {
                DialogUtil.b.dismiss();
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass10 */

            public final void onClick(DialogInterface dialog, int which) {
                String newAnser;
                if (answerEt.getText() == null) {
                    newAnser = null;
                } else {
                    newAnser = answerEt.getText().toString();
                }
                if (TextUtils.isEmpty(newAnser)) {
                    Toast.makeText(context, (int) R.string.password_answer_no_null_text, 0).show();
                    answerEt.startAnimation(AnimationUtils.loadAnimation(context, R.anim.shake));
                } else if (!PwdUtil.checkPasswordAnswer(context, newAnser)) {
                    Toast.makeText(context, (int) R.string.input_password_answer_error, 0).show();
                    answerEt.startAnimation(AnimationUtils.loadAnimation(context, R.anim.shake));
                } else {
                    switch (id) {
                        case 1:
                            WflUtils.startSettingPasswordActivity(context, Const.ACTION_MODIFY_PASSWORD_USE_ANSWER);
                            DialogUtil.b.dismiss();
                            return;
                        default:
                            return;
                    }
                }
            }
        }, false).show();
    }

    public static Dialog createManualUpdateDialog(final Context context, final int id, final WarnDialogListener listener) {
        View view = LayoutInflater.from(context).inflate(R.layout.dialog_manual_update, (ViewGroup) null);
        TextView note1 = (TextView) view.findViewById(R.id.note1_manual_update);
        switch (id) {
            case 2:
                note1.setText(R.string.update_note_text);
                ((TextView) view.findViewById(R.id.note2_manual_update)).setVisibility(0);
                return new CustomDialog.Builder(context).setTitle(R.string.update_lab_notice_text).setContentView(view).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass16 */

                    public final void onClick(DialogInterface dialog, int which) {
                        listener.onWarnDialogOk(id);
                    }
                }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass15 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                }).show();
            case 3:
                note1.setText(R.string.all_update_lab_is_new_text);
                return new CustomDialog.Builder(context).setTitle(R.string.update_lab_notice_text).setContentView(view).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass14 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                }).show();
            case 4:
                note1.setText(R.string.no_net_update_failure);
                return new CustomDialog.Builder(context).setTitle(R.string.update_lab_notice_text).setContentView(view).setPositiveButton(R.string.set_net_text, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass13 */

                    public final void onClick(DialogInterface dialog, int which) {
                        WflUtils.startWirelessSettingsActivity(context);
                    }
                }).setNeutralButton(R.string.cancel, new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass12 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                }).show();
            default:
                return null;
        }
    }

    public static Dialog createAutoUpdateRatechoice(Context context, final int id, final SettingNumberDialogListener listener) {
        return new CustomDialog.Builder(context).setTitle(R.string.title_auto_update).setSingleChoiceItems(AutoUpdateLabManager.getUpdateModeStringArray(context), AutoUpdateLabManager.getAutoUpdateMode(context), new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass3 */

            public final void onClick(DialogInterface dialog, int whichButton) {
                int unused = DialogUtil.c = whichButton;
            }
        }).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass2 */

            public final void onClick(DialogInterface dialog, int whichButton) {
                listener.onSettingNumberDialogOK(id, DialogUtil.c);
            }
        }).show();
    }

    public static Dialog NoticeDialog(final Context context, final int id, String title, String content, String positiveText, final WarnDialogListener listener) {
        return new CustomDialog.Builder(context).setTitle(title).setMessage(content).setPositiveButton(positiveText, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass5 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (id) {
                    case 0:
                        Intent intent = new Intent(context, FirstUsePasswordSettingActivity.class);
                        intent.setAction(Const.ACTION_JUMP_PROTECT_THIEF);
                        intent.setFlags(268435456);
                        context.startActivity(intent);
                        return;
                    case 1:
                    case 2:
                    default:
                        return;
                    case 3:
                        listener.onWarnDialogOk(3);
                        return;
                }
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass4 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }

    public static Dialog NoticePositiveDialog(Context context, final int id, String title, String content, final WarnDialogListener listener) {
        return new CustomDialog.Builder(context).setTitle(title).setMessage(content).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass6 */

            public final void onClick(DialogInterface dialog, int which) {
                switch (id) {
                    case 1:
                        listener.onWarnDialogOk(1);
                        return;
                    default:
                        return;
                }
            }
        }).show();
    }

    public static Dialog createSettingNumberDialog(final Context context, final int id, final SettingNumberDialogListener listener) {
        View view = LayoutInflater.from(context).inflate(R.layout.dialog_setting_number, (ViewGroup) null);
        TextView note1 = (TextView) view.findViewById(R.id.note1_input_number);
        switch (id) {
            case 2:
                note1.setText(R.string.input_sms_month_num_text);
                break;
        }
        final EditText editText = (EditText) view.findViewById(R.id.et_setting_number_comment);
        int sms = Const.getMonthLimitSMS();
        if (sms != 0) {
            editText.setText("" + sms);
        }
        return new CustomDialog.Builder(context).setTitle(R.string.input_notice_text).setContentView(view).setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass8 */

            public final void onClick(DialogInterface dialog, int which) {
                String number = editText.getText().toString();
                if (TextUtils.isEmpty(number)) {
                    Toast.makeText(context, context.getString(R.string.no_null_limit_input_num_text), 1).show();
                } else if (Integer.parseInt(number) == 0) {
                    Toast.makeText(context, context.getString(R.string.no_zero_limit_input_num_text), 1).show();
                } else {
                    listener.onSettingNumberDialogOK(id, Integer.valueOf(number).intValue());
                }
            }
        }).setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            /* class com.lenovo.safecenter.utils.DialogUtil.AnonymousClass7 */

            public final void onClick(DialogInterface dialog, int which) {
            }
        }).show();
    }
}
