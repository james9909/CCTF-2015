.class public Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;,
        Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$HeaderViewHolder;,
        Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/snapchat/android/model/Friend;",
        ">;",
        "Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/view/LayoutInflater;

.field private f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

.field private g:Landroid/widget/Filter;

.field private h:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/snapchat/android/model/Friend$FriendListSectionizer;Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/snapchat/android/model/Friend;",
            ">;",
            "Lcom/snapchat/android/model/Friend$FriendListSectionizer;",
            "Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 53
    iput-object p3, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b:Ljava/util/List;

    .line 54
    invoke-virtual {p3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->d:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/model/User;->s()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->c:Ljava/util/List;

    .line 56
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->e:Landroid/view/LayoutInflater;

    .line 57
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a:Landroid/content/Context;

    .line 58
    iput-object p4, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    .line 59
    iput-object p5, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->h:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->h:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    iput-object p1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b:Ljava/util/List;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 101
    const v0, 0x7f0a004c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 112
    :cond_2
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->r_()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    :goto_1
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/snapchat/android/model/UserPrefs;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0126

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_3
    invoke-virtual {p2}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->d:Ljava/util/List;

    return-object v0
.end method

.method private b(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    const v0, 0x7f0a0169

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 128
    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 135
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->h:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;

    invoke-interface {v1, p2}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    :goto_1
    new-instance v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;Lcom/snapchat/android/model/Friend;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->g:Landroid/widget/Filter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendFilter;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$1;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->g:Landroid/widget/Filter;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->g:Landroid/widget/Filter;

    return-object v0
.end method

.method public getHeaderId(I)J
    .locals 4
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 178
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-virtual {v2, v0, p1}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, v3}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 156
    if-nez p2, :cond_0

    .line 157
    new-instance v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$HeaderViewHolder;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$HeaderViewHolder;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;)V

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->e:Landroid/view/LayoutInflater;

    const v2, 0x7f040054

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 159
    const v0, 0x7f0a006d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    .line 160
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 166
    iget-object v2, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-virtual {v2, v0, p1}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/model/Friend;I)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->f:Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    iget-object v4, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a:Landroid/content/Context;

    invoke-virtual {v3, v2, v0, v4}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;->a(Lcom/snapchat/android/util/FriendSectionizer$FriendSection;Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 168
    iget-object v1, v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$HeaderViewHolder;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-object p2

    .line 162
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$HeaderViewHolder;

    move-object v1, v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    .line 82
    if-nez p2, :cond_0

    .line 83
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->e:Landroid/view/LayoutInflater;

    const v1, 0x7f04003b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/Friend;

    .line 87
    if-eqz v0, :cond_1

    .line 88
    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->a(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V

    .line 89
    invoke-direct {p0, p2, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->b(Landroid/view/View;Lcom/snapchat/android/model/Friend;)V

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->h:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;

    invoke-interface {v1, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;->a(Lcom/snapchat/android/model/Friend;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 93
    const v0, 0x7f080043

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    :goto_0
    return-object p2

    .line 95
    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
