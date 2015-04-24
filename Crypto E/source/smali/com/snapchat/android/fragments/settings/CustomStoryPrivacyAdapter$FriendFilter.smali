.class Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FriendFilter"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;


# direct methods
.method private constructor <init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 211
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Ljava/util/List;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    .line 216
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-static {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->c(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 219
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->x()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p1}, Lcom/snapchat/android/util/ScTextUtils;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, p1}, Lcom/snapchat/android/util/ScTextUtils;->a(ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 222
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 225
    goto :goto_0
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 2
    .parameter

    .prologue
    .line 202
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 204
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 205
    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 207
    return-object v1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 196
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;Ljava/util/List;)Ljava/util/List;

    .line 197
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;->a:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->notifyDataSetChanged()V

    .line 198
    return-void
.end method
