package com.tencent.tmsecure.module.update;

public interface IUpdateListener {

    public static final class UpdateListener implements IUpdateListener {
        private IUpdateListener a;

        public UpdateListener(IUpdateListener iUpdateListener) {
            this.a = iUpdateListener;
        }

        @Override // com.tencent.tmsecure.module.update.IUpdateListener
        public final void onProgressChanged(UpdateInfo updateInfo, int i) {
            if (this.a != null) {
                this.a.onProgressChanged(updateInfo, i);
            }
        }

        @Override // com.tencent.tmsecure.module.update.IUpdateListener
        public final void onUpdateCanceled() {
            if (this.a != null) {
                this.a.onUpdateCanceled();
            }
        }

        @Override // com.tencent.tmsecure.module.update.IUpdateListener
        public final void onUpdateEvent(UpdateInfo updateInfo, int i) {
            if (this.a != null) {
                this.a.onUpdateEvent(updateInfo, i);
            }
        }

        @Override // com.tencent.tmsecure.module.update.IUpdateListener
        public final void onUpdateFinished() {
            if (this.a != null) {
                this.a.onUpdateFinished();
            }
        }

        @Override // com.tencent.tmsecure.module.update.IUpdateListener
        public final void onUpdateStarted() {
            if (this.a != null) {
                this.a.onUpdateStarted();
            }
        }
    }

    void onProgressChanged(UpdateInfo updateInfo, int i);

    void onUpdateCanceled();

    void onUpdateEvent(UpdateInfo updateInfo, int i);

    void onUpdateFinished();

    void onUpdateStarted();
}
