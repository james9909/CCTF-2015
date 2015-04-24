.class Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 185
    sget-object v0, Lcom/snapchat/android/util/cache/Caches;->j:Lcom/snapchat/android/util/cache/Cache;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "snaptag"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/util/cache/Cache;->a(Landroid/content/Context;Ljava/lang/String;Lcom/snapchat/android/util/crypto/EncryptionAlgorithm;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/graphics/Bitmap;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    move-result-object v1

    .line 191
    new-instance v2, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;Landroid/graphics/Bitmap;)V

    invoke-static {v2}, Lcom/snapchat/android/util/threading/ThreadUtils;->a(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method
