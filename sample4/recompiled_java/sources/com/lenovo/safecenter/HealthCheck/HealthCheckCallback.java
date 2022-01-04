package com.lenovo.safecenter.HealthCheck;

public interface HealthCheckCallback {
    void onFinished(int i);

    void onOneItemProcess(HealthItemResult healthItemResult);

    void onProgressChanged(int i);

    void onResult(HealthItemResult healthItemResult);

    void onScoreChanged(int i);

    void onStarted(int i, int i2);

    void onStatusChanged(int i);

    void setProgressBarIndeterminate(boolean z);
}
