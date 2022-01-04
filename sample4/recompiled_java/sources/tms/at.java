package tms;

final class at implements Runnable {
    final /* synthetic */ an a;

    at(an anVar) {
        this.a = anVar;
    }

    public final void run() {
        synchronized (this.a.b.b) {
            this.a.b.a();
        }
    }
}
