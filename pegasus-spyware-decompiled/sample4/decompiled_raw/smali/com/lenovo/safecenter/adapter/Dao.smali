.class public interface abstract Lcom/lenovo/safecenter/adapter/Dao;
.super Ljava/lang/Object;
.source "Dao.java"


# virtual methods
.method public abstract deleByPackageNameForSafeApp(Ljava/lang/String;)V
.end method

.method public abstract deleByPackageNameForUserApp(Ljava/lang/String;)V
.end method

.method public abstract insterForSafeApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract insterForUserApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract queryAllForSafeApp()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryAllForUserApp()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryByAppNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
.end method

.method public abstract queryByAppNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
.end method

.method public abstract queryByPackageNameForSafeApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
.end method

.method public abstract queryByPackageNameForUserApp(Ljava/lang/String;)Lcom/lenovo/safecenter/support/SafePaymentApp;
.end method

.method public abstract queryByStateForUserApp(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/safecenter/support/SafePaymentApp;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryCount()I
.end method

.method public abstract updataProtectionByPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract updataStateAll(Ljava/lang/String;)V
.end method

.method public abstract updataStateByPackageName(Ljava/lang/String;Ljava/lang/String;)V
.end method
