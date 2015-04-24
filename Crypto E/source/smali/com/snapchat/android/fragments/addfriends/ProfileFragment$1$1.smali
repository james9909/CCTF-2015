.class Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 191
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 194
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$SnapTagStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 221
    return-void

    .line 196
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aE()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const-string v0, "ProfileFragment"

    const-string v1, "Downloading snap tag..."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    invoke-static {}, Lcom/snapchat/android/service/SnapchatServiceManager;->a()Lcom/snapchat/android/service/SnapchatServiceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->aE()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/service/SnapchatServiceManager;->f(Landroid/content/Context;Ljava/lang/String;)I

    goto :goto_0

    .line 201
    :cond_0
    const-string v0, "ProfileFragment"

    const-string v1, "The image ID for snap tag is empty. Cannot download the snap tag."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 207
    :pswitch_1
    const-string v0, "ProfileFragment"

    const-string v1, "Display a new snap tag image"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/util/bitmap/BitmapRecycling;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v1, v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/bitmap/BitmapRecycling;->a(Landroid/widget/ImageView;)V

    .line 209
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 210
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1$1;->c:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;->a:Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_0

    .line 216
    :pswitch_2
    const-string v0, "ProfileFragment"

    const-string v1, "No need to set the same snap tag image"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 194
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
