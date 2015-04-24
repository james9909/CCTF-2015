.class public Lcom/snapchat/android/util/eventbus/VerifyPhoneNumberForPaymentEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;)V
    .locals 0
    .parameter

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/VerifyPhoneNumberForPaymentEvent;->a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;

    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/snapchat/android/util/eventbus/VerifyPhoneNumberForPaymentEvent;->a:Lcom/snapchat/android/fragments/addfriends/ReturningUserPhoneVerificationFragment$ReturningUserPhoneVerificationFragmentListener;

    return-object v0
.end method
