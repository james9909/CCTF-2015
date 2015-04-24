.class Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;
.super Lcom/snapchat/android/api/SetNumBestFriendsTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;

    iput p2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;->a:I

    invoke-direct {p0}, Lcom/snapchat/android/api/SetNumBestFriendsTask;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 174
    iget v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;->a:I

    invoke-static {v0}, Lcom/snapchat/android/model/UserPrefs;->f(I)V

    .line 175
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->c:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;

    iget-object v0, v0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    const v1, 0x7f0a0064

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->O()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v0, 0x7f0c01d7

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->c:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;

    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-virtual {v1}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/snapchat/android/util/AlertDialogUtils;->a(ILandroid/content/Context;)V

    .line 178
    return-void
.end method
