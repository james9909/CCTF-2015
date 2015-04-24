.class public Lcom/snapchat/android/util/eventbus/ColorPickedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/snapchat/android/util/eventbus/ColorPickedEvent;->a:I

    .line 17
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/snapchat/android/util/eventbus/ColorPickedEvent;->a:I

    return v0
.end method
