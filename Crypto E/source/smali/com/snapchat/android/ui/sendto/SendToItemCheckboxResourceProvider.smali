.class public Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/snapchat/android/model/Friend;)I
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const v0, 0x7f0201ba

    .line 24
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201bc

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/snapchat/android/fragments/sendto/SendToItem;)I
    .locals 1
    .parameter

    .prologue
    .line 13
    instance-of v0, p1, Lcom/snapchat/android/model/Friend;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Lcom/snapchat/android/model/Friend;

    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/sendto/SendToItemCheckboxResourceProvider;->a(Lcom/snapchat/android/model/Friend;)I

    move-result v0

    .line 16
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0201bc

    goto :goto_0
.end method
