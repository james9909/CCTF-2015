.class Lcom/snapchat/android/InAppNotificationManager$NotificationItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/InAppNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotificationItem"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field public d:I

.field public e:I

.field public f:I

.field final synthetic g:Lcom/snapchat/android/InAppNotificationManager;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/InAppNotificationManager;ILjava/lang/CharSequence;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->g:Lcom/snapchat/android/InAppNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p2, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->a:I

    .line 253
    iput-object p3, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->b:Ljava/lang/CharSequence;

    .line 254
    iput-object p4, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->c:Ljava/lang/CharSequence;

    .line 255
    iput p5, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->d:I

    .line 256
    iput p6, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->e:I

    .line 257
    iput p7, p0, Lcom/snapchat/android/InAppNotificationManager$NotificationItem;->f:I

    .line 258
    return-void
.end method
