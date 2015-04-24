.class public Lcom/snapchat/android/receiver/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field private final b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a()Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/receiver/ConnectivityReceiver;-><init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/snapchat/android/networkmanager/NetworkStatusManager;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    .line 32
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    sget-object v0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->a:Landroid/content/IntentFilter;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 50
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 57
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 58
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 36
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 39
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/snapchat/android/receiver/ConnectivityReceiver;->b:Lcom/snapchat/android/networkmanager/NetworkStatusManager;

    invoke-virtual {v1, v0}, Lcom/snapchat/android/networkmanager/NetworkStatusManager;->a(Landroid/net/NetworkInfo;)V

    .line 41
    return-void
.end method
