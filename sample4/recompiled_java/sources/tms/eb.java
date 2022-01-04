package tms;

final class eb implements Runnable {
    final /* synthetic */ dz a;

    eb(dz dzVar) {
        this.a = dzVar;
    }

    public final void run() {
        dz.a(this.a).close();
    }
}
