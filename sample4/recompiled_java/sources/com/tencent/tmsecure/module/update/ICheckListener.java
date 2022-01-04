package com.tencent.tmsecure.module.update;

public interface ICheckListener {

    public static final class Proxy implements ICheckListener {
        private ICheckListener a;

        public Proxy(ICheckListener iCheckListener) {
            this.a = iCheckListener;
        }

        @Override // com.tencent.tmsecure.module.update.ICheckListener
        public final void onCheckCanceled() {
            if (this.a != null) {
                this.a.onCheckCanceled();
            }
        }

        @Override // com.tencent.tmsecure.module.update.ICheckListener
        public final void onCheckEvent(int i) {
            if (this.a != null) {
                this.a.onCheckEvent(i);
            }
        }

        @Override // com.tencent.tmsecure.module.update.ICheckListener
        public final void onCheckFinished(CheckResult checkResult) {
            if (this.a != null) {
                this.a.onCheckFinished(checkResult);
            }
        }

        @Override // com.tencent.tmsecure.module.update.ICheckListener
        public final void onCheckStarted() {
            if (this.a != null) {
                this.a.onCheckStarted();
            }
        }
    }

    void onCheckCanceled();

    void onCheckEvent(int i);

    void onCheckFinished(CheckResult checkResult);

    void onCheckStarted();
}
