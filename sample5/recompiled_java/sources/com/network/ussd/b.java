package com.network.ussd;

import com.network.ussd.CDUSSDService;

/* access modifiers changed from: package-private */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ CharSequence f175a;
    final /* synthetic */ CDUSSDService.AnonymousClass2 b;

    b(CDUSSDService.AnonymousClass2 r1, CharSequence charSequence) {
        this.b = r1;
        this.f175a = charSequence;
    }

    public final void run() {
        CDUSSDService.AnonymousClass2.a(this.b, this.f175a);
    }
}
