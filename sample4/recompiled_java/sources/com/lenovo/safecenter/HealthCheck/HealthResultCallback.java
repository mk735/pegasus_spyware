package com.lenovo.safecenter.HealthCheck;

public interface HealthResultCallback {
    void onOneItemProcess(HealthItemResult healthItemResult);

    void result(HealthItemResult healthItemResult);
}
