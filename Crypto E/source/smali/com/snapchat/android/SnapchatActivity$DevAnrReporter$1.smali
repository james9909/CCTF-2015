.class Lcom/snapchat/android/SnapchatActivity$DevAnrReporter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;->a(Lcom/snapchat/yorick/ParsedTrace;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter$1;->b:Lcom/snapchat/android/SnapchatActivity$DevAnrReporter;

    iput-object p2, p0, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 144
    const-string v0, "ANR detected from Snapchat! See more details in notification"

    iget-object v1, p0, Lcom/snapchat/android/SnapchatActivity$DevAnrReporter$1;->a:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 146
    return-void
.end method
