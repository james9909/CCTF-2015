.class Lcom/snapchat/android/fragments/signup/SignupFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/signup/SignupFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/signup/SignupFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/signup/SignupFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 299
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p2, p3, p4}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 301
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v1}, Lcom/snapchat/android/fragments/signup/SignupFragment;->g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 304
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Lcom/snapchat/android/fragments/signup/SignupFragment;Ljava/util/GregorianCalendar;)Ljava/util/GregorianCalendar;

    .line 305
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->h(Lcom/snapchat/android/fragments/signup/SignupFragment;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd/yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v2}, Lcom/snapchat/android/fragments/signup/SignupFragment;->g(Lcom/snapchat/android/fragments/signup/SignupFragment;)Ljava/util/GregorianCalendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v0, p0, Lcom/snapchat/android/fragments/signup/SignupFragment$8;->a:Lcom/snapchat/android/fragments/signup/SignupFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/signup/SignupFragment;->a(Lcom/snapchat/android/fragments/signup/SignupFragment;)V

    .line 308
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->y()V

    .line 310
    :cond_1
    return-void
.end method
