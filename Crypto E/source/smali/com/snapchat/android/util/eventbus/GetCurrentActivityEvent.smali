.class public Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;
    }
.end annotation


# instance fields
.field a:Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;)V
    .locals 0
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent;->a:Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent;->a:Lcom/snapchat/android/util/eventbus/GetCurrentActivityEvent$OnActivityListener;

    return-object v0
.end method
