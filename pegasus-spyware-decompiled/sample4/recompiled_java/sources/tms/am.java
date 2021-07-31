package tms;

final class am implements Runnable {
    final /* synthetic */ az a;

    am(az azVar) {
        this.a = azVar;
    }

    public final void run() {
        this.a.cancelMissCall();
    }
}
