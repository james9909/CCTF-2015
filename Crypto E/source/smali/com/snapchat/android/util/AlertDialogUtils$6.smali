.class final Lcom/snapchat/android/util/AlertDialogUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/util/AlertDialogUtils;->a(Landroid/content/Context;Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/ChronologicalSnapProvider;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/ReceivedSnap;

.field final synthetic b:Lcom/snapchat/android/model/User;


# direct methods
.method constructor <init>(Lcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/snapchat/android/util/AlertDialogUtils$6;->a:Lcom/snapchat/android/model/ReceivedSnap;

    iput-object p2, p0, Lcom/snapchat/android/util/AlertDialogUtils$6;->b:Lcom/snapchat/android/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 190
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/snapchat/android/util/AlertDialogUtils$6;->a:Lcom/snapchat/android/model/ReceivedSnap;

    iget-object v2, p0, Lcom/snapchat/android/util/AlertDialogUtils$6;->b:Lcom/snapchat/android/model/User;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(ZLcom/snapchat/android/model/ReceivedSnap;Lcom/snapchat/android/model/User;)V

    .line 191
    return-void
.end method
