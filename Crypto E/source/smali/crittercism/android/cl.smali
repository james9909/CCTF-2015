.class public final Lcrittercism/android/cl;
.super Ljava/lang/Object;

# interfaces
.implements Lcrittercism/android/cg;


# instance fields
.field private a:Lcrittercism/android/de;


# direct methods
.method public constructor <init>(Lcrittercism/android/de;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcrittercism/android/cl;->a:Lcrittercism/android/de;

    .line 13
    return-void
.end method


# virtual methods
.method public final a(ZILorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    if-nez p1, :cond_0

    .line 22
    iget-object v0, p0, Lcrittercism/android/cl;->a:Lcrittercism/android/de;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcrittercism/android/de;->a(Z)V

    .line 24
    :cond_0
    return-void
.end method
