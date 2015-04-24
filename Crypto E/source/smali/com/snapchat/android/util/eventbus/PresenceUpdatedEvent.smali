.class public Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;->a:Ljava/lang/String;

    .line 10
    iput-boolean p2, p0, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;->b:Z

    .line 11
    iput-object p3, p0, Lcom/snapchat/android/util/eventbus/PresenceUpdatedEvent;->c:Ljava/lang/String;

    .line 12
    return-void
.end method
