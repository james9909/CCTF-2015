.class public final Lcrittercism/android/bo$a;
.super Lcrittercism/android/bw;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcrittercism/android/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcrittercism/android/bw;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;)Lcrittercism/android/bh;
    .locals 2
    .parameter

    .prologue
    .line 15
    new-instance v0, Lcrittercism/android/bo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcrittercism/android/bo;-><init>(Ljava/io/File;B)V

    return-object v0
.end method
