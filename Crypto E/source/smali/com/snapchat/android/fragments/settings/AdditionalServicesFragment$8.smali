.class Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 142
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 144
    const v2, 0x7f040069

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 145
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 147
    const v0, 0x7f0a0246

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/simonvt/numberpicker/NumberPicker;

    .line 148
    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->b:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;

    invoke-virtual {v3}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 149
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setMinValue(I)V

    .line 150
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 151
    invoke-virtual {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 153
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->O()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v4}, Lnet/simonvt/numberpicker/NumberPicker;->setValue(I)V

    .line 155
    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setFocusable(Z)V

    .line 156
    invoke-virtual {v0, v5}, Lnet/simonvt/numberpicker/NumberPicker;->setFocusableInTouchMode(Z)V

    .line 158
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c01d6

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0c0142

    new-instance v5, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;

    invoke-direct {v5, p0, v3, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;[Ljava/lang/String;Lnet/simonvt/numberpicker/NumberPicker;)V

    invoke-virtual {v2, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003d

    new-instance v3, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$1;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 197
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    return-void
.end method
