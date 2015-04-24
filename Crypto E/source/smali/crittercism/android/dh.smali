.class public final Lcrittercism/android/dh;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 8
    new-instance v0, Lcrittercism/android/cm;

    invoke-direct {v0, p1}, Lcrittercism/android/cm;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 12
    new-instance v0, Lcrittercism/android/cm;

    invoke-direct {v0, p1}, Lcrittercism/android/cm;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0, v0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 13
    return-void
.end method
