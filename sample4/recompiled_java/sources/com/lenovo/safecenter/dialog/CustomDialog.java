package com.lenovo.safecenter.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.lenovo.safecenter.R;

public class CustomDialog extends Dialog {
    public CustomDialog(Context context, int theme) {
        super(context, theme);
    }

    public CustomDialog(Context context) {
        super(context);
    }

    public static class Builder {
        private DialogInterface.OnClickListener A;
        private DialogInterface.OnCancelListener B;
        private boolean C = true;
        private boolean D = true;
        private boolean E = true;
        private boolean F = true;
        private boolean G = false;
        private boolean H = false;
        private int a = R.drawable.home_page_button_healthcheckup_selector;
        private int b = R.drawable.signbtn_bg;
        private Context c;
        private int d;
        private String e;
        private String f;
        private String g;
        private String h;
        private String i;
        private TextView j;
        private TextView k;
        private TextView l;
        private LinearLayout m;
        private View n;
        private TextView o;
        private CustomDialog p;
        private int q = -1;
        private int r = -1;
        private int s = -1;
        private String[] t = null;
        private int u = -1;
        private String[] v = null;
        private DialogInterface.OnClickListener w;
        private DialogInterface.OnClickListener x;
        private DialogInterface.OnClickListener y;
        private DialogInterface.OnClickListener z;

        public Builder setColorNeutralButton(boolean isColorNeutralButton) {
            this.H = isColorNeutralButton;
            return this;
        }

        public Builder setColorNegativeButton(boolean isColorNegativeButton) {
            this.G = isColorNegativeButton;
            return this;
        }

        public Builder setColorPositiveButton(boolean isColorPositiveButton) {
            this.F = isColorPositiveButton;
            return this;
        }

        public Builder(Context context) {
            this.c = context;
        }

        public Builder setIcon(int icon) {
            this.d = icon;
            return this;
        }

        public Builder setMessage(String message) {
            this.f = message;
            return this;
        }

        public Builder setMessage(int message) {
            this.f = (String) this.c.getText(message);
            return this;
        }

        public Builder setTitle(int title) {
            this.e = (String) this.c.getText(title);
            return this;
        }

        public Builder setTitle(String title) {
            this.e = title;
            return this;
        }

        public Builder reSetTitle(String title) {
            this.e = title;
            if (this.o != null) {
                this.o.setText(title);
            }
            return this;
        }

        public Builder setContentView(View v2) {
            this.n = v2;
            return this;
        }

        public Builder setPositiveButton(int positiveButtonText, DialogInterface.OnClickListener listener) {
            this.g = (String) this.c.getText(positiveButtonText);
            if (listener == null) {
                this.w = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass1 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.w = listener;
            }
            return this;
        }

        public Builder setPositiveButton(String positiveButtonText, DialogInterface.OnClickListener listener) {
            this.g = positiveButtonText;
            if (listener == null) {
                this.w = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass11 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.w = listener;
            }
            return this;
        }

        public Builder setPositiveButton(int positiveButtonText, DialogInterface.OnClickListener listener, boolean autoDismiss) {
            this.C = autoDismiss;
            this.g = (String) this.c.getText(positiveButtonText);
            if (listener == null) {
                this.w = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass12 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.w = listener;
            }
            return this;
        }

        public Builder setNegativeButton(int negativeButtonText, DialogInterface.OnClickListener listener) {
            this.h = (String) this.c.getText(negativeButtonText);
            if (listener == null) {
                this.y = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass13 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.y = listener;
            }
            return this;
        }

        public Builder setNegativeButton(String negativeButtonText, DialogInterface.OnClickListener listener) {
            this.h = negativeButtonText;
            if (listener == null) {
                this.y = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass14 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.y = listener;
            }
            return this;
        }

        public Builder setNegativeButton(int negativeButtonText, DialogInterface.OnClickListener listener, boolean autoDismiss) {
            this.D = autoDismiss;
            this.h = (String) this.c.getText(negativeButtonText);
            if (listener == null) {
                this.y = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass15 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.y = listener;
            }
            return this;
        }

        public Builder setNeutralButton(int neutralButtonText, DialogInterface.OnClickListener listener) {
            this.i = (String) this.c.getText(neutralButtonText);
            if (listener == null) {
                this.x = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass16 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.x = listener;
            }
            return this;
        }

        public Builder setNeutralButton(String neutralButtonText, DialogInterface.OnClickListener listener) {
            this.i = neutralButtonText;
            if (listener == null) {
                this.x = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass17 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.x = listener;
            }
            return this;
        }

        public Builder setNeutralButton(int neutralButtonText, DialogInterface.OnClickListener listener, boolean autoDismiss) {
            this.E = autoDismiss;
            this.i = (String) this.c.getText(neutralButtonText);
            if (listener == null) {
                this.x = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass18 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.x = listener;
            }
            return this;
        }

        public Builder setItems(int itemsId, DialogInterface.OnClickListener listener) {
            this.q = 2;
            this.u = itemsId;
            if (listener == null) {
                this.A = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass2 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.A = listener;
            }
            return this;
        }

        public Builder setItems(String[] itemsId, DialogInterface.OnClickListener listener) {
            this.q = 2;
            this.v = itemsId;
            if (listener == null) {
                this.A = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass3 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.A = listener;
            }
            return this;
        }

        public Builder setSingleChoiceItems(int singleChoiceItemsId, int singleChoiceCheckedId, DialogInterface.OnClickListener listener) {
            this.q = 0;
            this.r = singleChoiceItemsId;
            this.s = singleChoiceCheckedId;
            if (listener == null) {
                this.z = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass4 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.z = listener;
            }
            return this;
        }

        public Builder setSingleChoiceItems(String[] singleChoiceItems, int singleChoiceCheckedId, DialogInterface.OnClickListener listener) {
            this.q = 0;
            this.t = singleChoiceItems;
            this.s = singleChoiceCheckedId;
            if (listener == null) {
                this.z = new DialogInterface.OnClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass5 */

                    public final void onClick(DialogInterface dialog, int which) {
                    }
                };
            } else {
                this.z = listener;
            }
            return this;
        }

        public Builder setOnCancelListener(DialogInterface.OnCancelListener onCancelListener) {
            this.B = onCancelListener;
            return this;
        }

        public Builder setPositiveButtonVisible(boolean isVisible) {
            if (this.j != null) {
                if (isVisible) {
                    this.j.setVisibility(0);
                } else {
                    this.j.setVisibility(8);
                }
            }
            return this;
        }

        public Builder setNeutralButtonVisible(boolean isVisible) {
            if (this.l != null) {
                if (isVisible) {
                    this.l.setVisibility(0);
                } else {
                    this.l.setVisibility(8);
                }
            }
            return this;
        }

        public Builder setNegativeButtonVisible(boolean isVisible) {
            if (this.k != null) {
                if (isVisible) {
                    this.k.setVisibility(0);
                } else {
                    this.k.setVisibility(8);
                }
            }
            return this;
        }

        public Builder setButtonVisible(boolean isVisible) {
            if (this.m != null) {
                if (isVisible) {
                    this.m.setVisibility(0);
                } else {
                    this.m.setVisibility(8);
                }
            }
            return this;
        }

        public CustomDialog create() {
            final CustomDialog dialog = new CustomDialog(this.c, R.style.Dialog);
            View layout = ((LayoutInflater) this.c.getSystemService("layout_inflater")).inflate(R.layout.dialog, (ViewGroup) null);
            dialog.addContentView(layout, new ViewGroup.LayoutParams(-1, -2));
            ImageView icon = (ImageView) layout.findViewById(R.id.icon);
            if (this.d != 0) {
                icon.setVisibility(0);
                icon.setImageResource(this.d);
            } else {
                icon.setVisibility(8);
            }
            this.m = (LinearLayout) layout.findViewById(R.id.button);
            this.o = (TextView) layout.findViewById(R.id.title);
            this.o.setText(this.e);
            if (this.g != null) {
                this.j = (TextView) layout.findViewById(R.id.positiveButton);
                this.j.setText(this.g);
                if (this.F) {
                    this.j.setBackgroundResource(this.a);
                } else {
                    this.j.setBackgroundResource(this.b);
                }
                if (this.w != null) {
                    ((TextView) layout.findViewById(R.id.positiveButton)).setOnClickListener(new View.OnClickListener() {
                        /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass6 */

                        public final void onClick(View v) {
                            Builder.this.w.onClick(dialog, -1);
                            if (Builder.this.C) {
                                dialog.dismiss();
                            }
                        }
                    });
                }
            } else {
                layout.findViewById(R.id.positiveButton).setVisibility(8);
            }
            if (this.i != null) {
                this.l = (TextView) layout.findViewById(R.id.neutralButton);
                this.l.setText(this.i);
                if (this.H) {
                    this.l.setBackgroundResource(this.a);
                } else {
                    this.l.setBackgroundResource(this.b);
                }
                if (this.x != null) {
                    ((TextView) layout.findViewById(R.id.neutralButton)).setOnClickListener(new View.OnClickListener() {
                        /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass7 */

                        public final void onClick(View v) {
                            Builder.this.x.onClick(dialog, -3);
                            if (Builder.this.E) {
                                dialog.dismiss();
                            }
                        }
                    });
                }
            } else {
                layout.findViewById(R.id.neutralButton).setVisibility(8);
            }
            if (this.h != null) {
                this.k = (TextView) layout.findViewById(R.id.negativeButton);
                this.k.setText(this.h);
                if (this.G) {
                    this.k.setBackgroundResource(this.a);
                } else {
                    this.k.setBackgroundResource(this.b);
                }
                if (this.y != null) {
                    ((TextView) layout.findViewById(R.id.negativeButton)).setOnClickListener(new View.OnClickListener() {
                        /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass8 */

                        public final void onClick(View v) {
                            Builder.this.y.onClick(dialog, -2);
                            if (Builder.this.D) {
                                dialog.dismiss();
                            }
                        }
                    });
                }
            } else {
                layout.findViewById(R.id.negativeButton).setVisibility(8);
            }
            if (this.f != null) {
                ((TextView) layout.findViewById(R.id.message)).setText(this.f);
            } else if (this.q == 0) {
                ArrayAdapter arrayAdapter = this.t != null ? new ArrayAdapter(this.c, 17367055, this.t) : new ArrayAdapter(this.c, 17367055, this.c.getResources().getStringArray(this.r));
                ListView listView = new ListView(this.c);
                Log.i("wu0wu", "singleChoiceCheckedId=" + this.s);
                listView.setChoiceMode(1);
                listView.setCacheColorHint(this.c.getResources().getColor(R.color.transparent_background));
                listView.setAdapter((ListAdapter) arrayAdapter);
                listView.setItemsCanFocus(false);
                listView.setItemChecked(this.s, true);
                ((LinearLayout) layout.findViewById(R.id.content)).removeAllViews();
                ((LinearLayout) layout.findViewById(R.id.content)).addView(listView, new ViewGroup.LayoutParams(-1, -2));
                listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass10 */

                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                        if (Builder.this.z != null) {
                            Builder.this.z.onClick(dialog, position);
                            Log.i("wu0wu", "singleChoiceItemsCheckListener onItemClick=" + position);
                        }
                    }
                });
            } else if (this.q == 2) {
                ArrayAdapter arrayAdapter2 = new ArrayAdapter(this.c, 17367043, this.v == null ? this.c.getResources().getStringArray(this.u) : this.v);
                ListView listView2 = new ListView(this.c);
                listView2.setCacheColorHint(this.c.getResources().getColor(R.color.transparent_background));
                listView2.setAdapter((ListAdapter) arrayAdapter2);
                ((LinearLayout) layout.findViewById(R.id.button)).setVisibility(8);
                ((LinearLayout) layout.findViewById(R.id.content)).removeAllViews();
                ((LinearLayout) layout.findViewById(R.id.content)).addView(listView2, new ViewGroup.LayoutParams(-1, -2));
                listView2.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    /* class com.lenovo.safecenter.dialog.CustomDialog.Builder.AnonymousClass9 */

                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                        if (Builder.this.A != null) {
                            Builder.this.A.onClick(dialog, position);
                            Log.i("wu0wu", "noChoiceListonClickListener onItemClick=" + position);
                            dialog.dismiss();
                        }
                    }
                });
            } else if (this.n != null) {
                ((LinearLayout) layout.findViewById(R.id.content)).removeAllViews();
                ((LinearLayout) layout.findViewById(R.id.content)).addView(this.n, new ViewGroup.LayoutParams(-1, -2));
            }
            dialog.setContentView(layout);
            return dialog;
        }

        public CustomDialog getDialog() {
            return this.p;
        }

        public CustomDialog show() {
            CustomDialog dialog = create();
            this.p = dialog;
            dialog.setCanceledOnTouchOutside(false);
            dialog.show();
            return dialog;
        }
    }
}
