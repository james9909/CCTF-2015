.class Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Landroid/widget/TextView;

.field final synthetic c:[Ljava/lang/CharSequence;

.field final synthetic d:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;[Ljava/lang/String;Landroid/widget/TextView;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 435
    iput-object p1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->d:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->b:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->c:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 438
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->d:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->a:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->c(Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->c:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    iget-object v0, p0, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment$11;->d:Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/verification/PhoneVerificationFragment;->q()V

    .line 441
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 443
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->g()V

    .line 444
    return-void
.end method
