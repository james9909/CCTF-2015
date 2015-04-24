.class public Lcom/snapchat/android/util/debug/BugReportFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/util/debug/BugReportRemoteLogListFragment$OnFriendSelectedListener;


# static fields
.field private static final a:[Ljava/lang/CharSequence;


# instance fields
.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/ImageView;

.field private d:Z

.field private e:Z

.field private f:Landroid/widget/EditText;

.field private g:Landroid/widget/EditText;

.field private h:Ljava/lang/String;

.field private i:Landroid/widget/Button;

.field private j:Ljava/lang/String;

.field private k:[Ljava/lang/String;

.field private l:Landroid/app/Activity;

.field private m:Z

.field private n:Landroid/widget/Button;

.field private o:Z

.field private p:Landroid/widget/TextView;

.field private q:Ljava/lang/String;

.field private r:Landroid/app/AlertDialog$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Camera"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Cash"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Chat"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Discover"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Discover Content"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Feed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Friends"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Here"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Snap preview"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Snap receiving/opening"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Stories"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Brand Story"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Our Story"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Login"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Registration"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Settings"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Profile"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Other/Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/debug/BugReportFragment;->a:[Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->d:Z

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->e:Z

    .line 56
    iput-boolean v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->m:Z

    .line 58
    iput-boolean v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->o:Z

    .line 65
    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    invoke-static {p1}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->h:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->h()V

    .line 94
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->i()V

    .line 95
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->k()V

    .line 96
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->l()V

    .line 97
    invoke-direct {p0, p1}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(I)V

    .line 98
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->n()V

    .line 99
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->o()V

    .line 100
    invoke-direct {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->p()V

    .line 101
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->o:Z

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->o:Z

    return p1
.end method

.method static synthetic b(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->p:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/snapchat/android/util/debug/ScApplicationInfo;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/util/debug/BugReportFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->q:Ljava/lang/String;

    return-object p1
.end method

.method private b(I)V
    .locals 2
    .parameter

    .prologue
    .line 260
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->b:Landroid/widget/Button;

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->b:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/snapchat/android/util/debug/BugReportFragment$7;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->e:Z

    return p1
.end method

.method static synthetic b()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/snapchat/android/util/debug/BugReportFragment;->a:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->l:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->d:Z

    return p1
.end method

.method static synthetic d(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/util/debug/BugReportFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->m:Z

    return p1
.end method

.method static synthetic e(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->d:Z

    return v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 104
    const v0, 0x7f0a0073

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->l:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v0, 0x7f0a0074

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->p:Landroid/widget/TextView;

    .line 107
    const-string v0, "Send this report only to yourself?"

    .line 108
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->p:Landroid/widget/TextView;

    const-string v1, "Send this report only to yourself?"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 110
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->p:Landroid/widget/TextView;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$1;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$1;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void
.end method

.method static synthetic h(Lcom/snapchat/android/util/debug/BugReportFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->i:Landroid/widget/Button;

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    .line 141
    const v0, 0x7f0a0076

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->c:Landroid/widget/ImageView;

    .line 144
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->l:Landroid/app/Activity;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 149
    :goto_0
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 153
    :cond_0
    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment$2;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic j(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 184
    const v0, 0x7f0a007a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->f:Landroid/widget/EditText;

    .line 185
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$3;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 202
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->f:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$4;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 210
    return-void
.end method

.method static synthetic l(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->r:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 213
    const v0, 0x7f0a0078

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->g:Landroid/widget/EditText;

    .line 214
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$5;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 242
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->g:Landroid/widget/EditText;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$6;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$6;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 257
    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/util/debug/BugReportFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->j:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 2

    .prologue
    .line 284
    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->n:Landroid/widget/Button;

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->n:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$8;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    return-void
.end method

.method private o()V
    .locals 2

    .prologue
    .line 294
    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->d(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->i:Landroid/widget/Button;

    .line 295
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->i:Landroid/widget/Button;

    new-instance v1, Lcom/snapchat/android/util/debug/BugReportFragment$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$9;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    return-void
.end method

.method static synthetic o(Lcom/snapchat/android/util/debug/BugReportFragment;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->k:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->g:Landroid/widget/EditText;

    return-object v0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 324
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->l:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Which project?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/util/debug/BugReportFragment;->a:[Ljava/lang/CharSequence;

    new-instance v2, Lcom/snapchat/android/util/debug/BugReportFragment$10;

    invoke-direct {v2, p0}, Lcom/snapchat/android/util/debug/BugReportFragment$10;-><init>(Lcom/snapchat/android/util/debug/BugReportFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->r:Landroid/app/AlertDialog$Builder;

    .line 332
    return-void
.end method

.method static synthetic q(Lcom/snapchat/android/util/debug/BugReportFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->n:Landroid/widget/Button;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 347
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->b:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 348
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->h:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onAttach(Landroid/app/Activity;)V

    .line 70
    iput-object p1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->l:Landroid/app/Activity;

    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 81
    const v0, 0x7f04000b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 82
    invoke-virtual {p0, v0}, Lcom/snapchat/android/util/debug/BugReportFragment;->e(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->H()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screenshots"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->j:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/snapchat/android/util/debug/BugReportFragment;->H()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "logs"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->k:[Ljava/lang/String;

    .line 87
    const v1, 0x7f0a0071

    invoke-direct {p0, v1}, Lcom/snapchat/android/util/debug/BugReportFragment;->a(I)V

    .line 89
    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onDetach()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/util/debug/BugReportFragment;->l:Landroid/app/Activity;

    .line 77
    return-void
.end method
