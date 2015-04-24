.class Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

.field final synthetic b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iput-object p2, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 311
    sget-object v0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$14;->a:[I

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-virtual {v1}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->e(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 332
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-virtual {v0}, Lcom/snapchat/android/api2/cash/blockers/CardInputError;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->y(Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->j(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;)Z

    .line 335
    return-void

    .line 314
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->a(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->b(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->c(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_0

    .line 322
    :pswitch_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->b:Lcom/snapchat/android/fragments/cash/CardLinkFragment;

    iget-object v1, p0, Lcom/snapchat/android/fragments/cash/CardLinkFragment$12;->a:Lcom/snapchat/android/api2/cash/blockers/CardInputError;

    invoke-static {v0, v1}, Lcom/snapchat/android/fragments/cash/CardLinkFragment;->d(Lcom/snapchat/android/fragments/cash/CardLinkFragment;Lcom/snapchat/android/api2/cash/blockers/CardInputError;)V

    goto :goto_0

    .line 311
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
