.class public Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:[Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 22
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->a:Landroid/content/Context;

    .line 23
    iput p2, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->b:I

    .line 24
    iput-object p3, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->c:[Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->d:I

    .line 27
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    iget v1, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->b:I

    invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 37
    const v0, 0x7f0a0080

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 38
    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->c:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 40
    iget v2, p0, Lcom/snapchat/android/util/debug/BugReportRemoteLogListAdapter;->d:I

    invoke-virtual {v0, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 43
    :cond_0
    return-object v1
.end method
