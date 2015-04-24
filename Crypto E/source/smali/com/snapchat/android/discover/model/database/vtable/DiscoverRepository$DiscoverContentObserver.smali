.class public abstract Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DiscoverContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DiscoverContentObserver"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter

    .prologue
    .line 589
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 590
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public onChange(Z)V
    .locals 0
    .parameter

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DiscoverContentObserver;->a()V

    .line 595
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/snapchat/android/discover/model/database/vtable/DiscoverRepository$DiscoverContentObserver;->a()V

    .line 600
    return-void
.end method
