.class public Lcom/snapchat/android/util/eventbus/EditCaptionEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-boolean p1, p0, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;->a:Z

    .line 9
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/snapchat/android/util/eventbus/EditCaptionEvent;->a:Z

    return v0
.end method
