.class public Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;


# instance fields
.field private final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private b()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    const v0, 0x7f0a0168

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;

    .line 72
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    new-instance v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$1;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 83
    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setFastScrollAlwaysVisible(Z)V

    .line 85
    new-instance v1, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$2;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v0, v1}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    invoke-virtual {v0, v2}, Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;->setTextFilterEnabled(Z)V

    .line 94
    const v1, 0x7f0a0164

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$3;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    const v1, 0x7f0a0166

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$4;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$4;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0a0057

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d:Landroid/view/View;

    .line 108
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f:Landroid/view/View;

    .line 109
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f:Landroid/view/View;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;

    invoke-direct {v2, p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$5;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f0a0165

    invoke-virtual {p0, v1}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    .line 117
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    new-instance v2, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment$6;-><init>(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersListView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 137
    return-void
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->i()V

    return-void
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 180
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 182
    iput-boolean v2, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    .line 183
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 186
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 190
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    .line 192
    return-void
.end method


# virtual methods
.method public a(Lcom/snapchat/android/model/Friend;)Z
    .locals 2
    .parameter

    .prologue
    .line 153
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 157
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->notifyDataSetChanged()V

    .line 159
    return-void
.end method

.method public c(Lcom/snapchat/android/model/Friend;)V
    .locals 2
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 163
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;->notifyDataSetChanged()V

    .line 164
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->g:Z

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h()V

    .line 170
    const/4 v0, 0x1

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->G()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 50
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 51
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->G()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 53
    const v0, 0x7f04003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->x:Landroid/view/View;

    .line 54
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->G()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->x:Landroid/view/View;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/ViewUtils;->a(Landroid/view/Window;Landroid/view/View;Landroid/content/Context;)V

    .line 56
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->h:Landroid/view/inputmethod/InputMethodManager;

    .line 58
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/model/User;->A()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 61
    new-instance v0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f04003b

    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/snapchat/android/model/User;->j()Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/model/Friend$FriendListSectionizer;

    invoke-direct {v4}, Lcom/snapchat/android/model/Friend$FriendListSectionizer;-><init>()V

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/snapchat/android/model/Friend$FriendListSectionizer;Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter$FriendCheckedCallback;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b:Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyAdapter;

    .line 65
    invoke-direct {p0}, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->b()V

    .line 67
    iget-object v0, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->x:Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 146
    iget-object v1, p0, Lcom/snapchat/android/fragments/settings/CustomStoryPrivacyFragment;->a:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 147
    invoke-static {}, Lcom/snapchat/android/model/User;->c()Lcom/snapchat/android/model/User;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snapchat/android/model/User;->g(Ljava/util/List;)V

    .line 148
    new-instance v0, Lcom/snapchat/android/api/SettingsTask;

    const-string v1, "updateStoryPrivacy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CUSTOM"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/SettingsTask;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/snapchat/android/util/ScExecutors;->b:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/api/SettingsTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    return-void
.end method
