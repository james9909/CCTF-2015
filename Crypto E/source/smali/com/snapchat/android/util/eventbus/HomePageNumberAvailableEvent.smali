.class public Lcom/snapchat/android/util/eventbus/HomePageNumberAvailableEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/snapchat/android/util/eventbus/HomePageNumberAvailableEvent;->a:I

    .line 12
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/snapchat/android/util/eventbus/HomePageNumberAvailableEvent;->a:I

    return v0
.end method
