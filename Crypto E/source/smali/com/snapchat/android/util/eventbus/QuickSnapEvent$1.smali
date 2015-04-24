.class final Lcom/snapchat/android/util/eventbus/QuickSnapEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/snapchat/android/util/eventbus/QuickSnapEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
    .locals 1
    .parameter

    .prologue
    .line 43
    new-instance v0, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    invoke-direct {v0, p1}, Lcom/snapchat/android/util/eventbus/QuickSnapEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/snapchat/android/util/eventbus/QuickSnapEvent;
    .locals 1
    .parameter

    .prologue
    .line 47
    new-array v0, p1, [Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/eventbus/QuickSnapEvent$1;->a(Landroid/os/Parcel;)Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/snapchat/android/util/eventbus/QuickSnapEvent$1;->a(I)[Lcom/snapchat/android/util/eventbus/QuickSnapEvent;

    move-result-object v0

    return-object v0
.end method
