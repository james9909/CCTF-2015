.class Lcom/snapchat/android/notification/AndroidNotificationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;Ljava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

.field final synthetic c:Lcom/snapchat/android/notification/AndroidNotificationManager;


# direct methods
.method constructor <init>(Lcom/snapchat/android/notification/AndroidNotificationManager;Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 884
    iput-object p1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iput-object p2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 888
    iget-object v0, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->c:Lcom/snapchat/android/notification/AndroidNotificationManager;

    iget-object v1, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/snapchat/android/notification/AndroidNotificationManager$2;->b:Lcom/snapchat/android/notification/AndroidNotificationManager$Type;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/notification/AndroidNotificationManager;->a(Landroid/content/Context;Lcom/snapchat/android/notification/AndroidNotificationManager$Type;)V

    .line 889
    return-void
.end method
