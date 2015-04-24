.class public Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->d:Z

    .line 48
    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->e:Z

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->h:Z

    .line 50
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->a:I

    .line 24
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->b:Ljava/lang/CharSequence;

    .line 25
    iput-object p3, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->c:Ljava/lang/CharSequence;

    .line 26
    iput-boolean v1, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->d:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->e:Z

    .line 28
    iput-boolean v1, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->h:Z

    .line 29
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->a:I

    .line 34
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->b:Ljava/lang/CharSequence;

    .line 35
    iput-object p3, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->c:Ljava/lang/CharSequence;

    .line 36
    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->d:Z

    .line 37
    iput p4, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->f:I

    .line 38
    iput p5, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->g:I

    .line 39
    iput-boolean v0, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->e:Z

    .line 40
    iput-boolean p6, p0, Lcom/snapchat/android/util/eventbus/DisplayInAppNotificationEvent;->h:Z

    .line 41
    return-void
.end method
