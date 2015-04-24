.class Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/cash/CardExpiryEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MMYYExpiryFormatWatcher"
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

.field private b:Ljava/lang/CharSequence;

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 166
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->b:Ljava/lang/CharSequence;

    .line 169
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->c:Z

    .line 170
    iput-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Lcom/snapchat/android/ui/cash/CardExpiryEditText$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;-><init>(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    iget-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->d:Z

    if-eqz v0, :cond_0

    .line 211
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v0, p1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Landroid/text/Editable;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 188
    iget-boolean v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->c:Z

    if-eqz v1, :cond_1

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 195
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v1, v4}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Z)Z

    .line 196
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/cash/ValidatedInputCallback;->b()V

    .line 206
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->b:Ljava/lang/CharSequence;

    .line 208
    :cond_3
    iput-boolean v4, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->d:Z

    .line 209
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-interface {p1, v3, v1, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 210
    iput-boolean v3, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->d:Z

    goto :goto_0

    .line 200
    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v1, v3}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;Z)Z

    .line 201
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    iget-object v1, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->a:Lcom/snapchat/android/ui/cash/CardExpiryEditText;

    invoke-static {v1}, Lcom/snapchat/android/ui/cash/CardExpiryEditText;->a(Lcom/snapchat/android/ui/cash/CardExpiryEditText;)Lcom/snapchat/android/cash/ValidatedInputCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/snapchat/android/cash/ValidatedInputCallback;->a()V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 174
    if-nez p4, :cond_0

    add-int v0, p2, p3

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/cash/CardExpiryEditText$MMYYExpiryFormatWatcher;->c:Z

    .line 175
    return-void

    .line 174
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    return-void
.end method
