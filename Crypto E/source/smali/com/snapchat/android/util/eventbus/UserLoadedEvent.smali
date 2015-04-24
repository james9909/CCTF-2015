.class public Lcom/snapchat/android/util/eventbus/UserLoadedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/snapchat/android/model/User;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/UserLoadedEvent;->a:Lcom/snapchat/android/model/User;

    .line 13
    return-void
.end method
