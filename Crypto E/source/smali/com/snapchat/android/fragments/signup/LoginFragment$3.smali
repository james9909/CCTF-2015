.class Lcom/snapchat/android/fragments/signup/LoginFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Ljava/lang/String;Lcom/snapchat/android/api2/LoginTask$ResponsePayload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/snapchat/android/fragments/signup/LoginFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/LoginFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 197
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->b:Lcom/snapchat/android/fragments/signup/LoginFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->b:Lcom/snapchat/android/fragments/signup/LoginFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/LoginFragment$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/fragments/signup/LoginFragment;->a(Ljava/lang/String;)V

    .line 201
    return-void
.end method
