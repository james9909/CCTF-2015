.class final Lcom/snapchat/android/discover/model/ChannelPage$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/ChannelPage;
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
        "Lcom/snapchat/android/discover/model/ChannelPage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 2
    .parameter

    .prologue
    .line 391
    new-instance v0, Lcom/snapchat/android/discover/model/ChannelPage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/snapchat/android/discover/model/ChannelPage;-><init>(Landroid/os/Parcel;Lcom/snapchat/android/discover/model/ChannelPage$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/snapchat/android/discover/model/ChannelPage;
    .locals 1
    .parameter

    .prologue
    .line 394
    new-array v0, p1, [Lcom/snapchat/android/discover/model/ChannelPage;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/ChannelPage$1;->a(Landroid/os/Parcel;)Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 389
    invoke-virtual {p0, p1}, Lcom/snapchat/android/discover/model/ChannelPage$1;->a(I)[Lcom/snapchat/android/discover/model/ChannelPage;

    move-result-object v0

    return-object v0
.end method
