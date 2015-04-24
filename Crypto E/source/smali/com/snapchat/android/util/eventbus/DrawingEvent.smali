.class public Lcom/snapchat/android/util/eventbus/DrawingEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;
    }
.end annotation


# instance fields
.field private final a:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;)V
    .locals 0
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/DrawingEvent;->a:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/DrawingEvent;->a:Lcom/snapchat/android/util/eventbus/DrawingEvent$DrawingEventType;

    return-object v0
.end method
