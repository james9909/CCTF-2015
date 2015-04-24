.class public final Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$$InjectAdapter;
.super Ldagger/internal/Binding;
.source "SourceFile"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/internal/Binding",
        "<",
        "Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;",
        ">;",
        "Ljavax/inject/Provider",
        "<",
        "Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 18
    const-string v0, "com.snapchat.android.util.crypto.SlightlySecurePreferences"

    const-string v1, "members/com.snapchat.android.util.crypto.SlightlySecurePreferences"

    const/4 v2, 0x1

    const-class v3, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-direct {p0, v0, v1, v2, v3}, Ldagger/internal/Binding;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    invoke-direct {v0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;-><init>()V

    .line 28
    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/snapchat/android/util/crypto/SlightlySecurePreferences$$InjectAdapter;->a()Lcom/snapchat/android/util/crypto/SlightlySecurePreferences;

    move-result-object v0

    return-object v0
.end method
