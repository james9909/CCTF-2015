.class Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lnet/simonvt/numberpicker/NumberPicker;

.field final synthetic c:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;[Ljava/lang/String;Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->c:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;

    iput-object p2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->a:[Ljava/lang/String;

    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->b:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 164
    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->O()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->a:[Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->b:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v2}, Lnet/simonvt/numberpicker/NumberPicker;->getValue()I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 167
    if-eq v1, v0, :cond_0

    .line 169
    invoke-static {v1}, Lcom/snapchat/android/model/UserPrefs;->f(I)V

    .line 170
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;->c:Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;

    iget-object v2, v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8;->a:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v2, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;-><init>(Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2;I)V

    sget-object v3, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/snapchat/android/fragments/settings/AdditionalServicesFragment$8$2$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 183
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 184
    const-string v3, "prev_num_best_friends"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v0, "num_best_friends"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "CHANGE_BEST_FRIENDS_COUNT"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/util/Map;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->c()V

    .line 188
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 189
    return-void
.end method
