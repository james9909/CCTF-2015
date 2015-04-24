.class final Lcom/snapchat/android/Timber$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/Timber;->a(Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZLjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Ljava/lang/Object;

.field final synthetic c:Lcom/snapchat/android/Timber$LogType;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Lcom/snapchat/android/Timber$LogType;Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/snapchat/android/Timber$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snapchat/android/Timber$1;->b:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    iput-object p4, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/snapchat/android/Timber$1;->e:Z

    iput-object p6, p0, Lcom/snapchat/android/Timber$1;->f:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/snapchat/android/Timber$1;->a:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-lez v1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/Timber$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :cond_0
    sget-object v1, Lcom/snapchat/android/Timber$3;->a:[I

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v2}, Lcom/snapchat/android/Timber$LogType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 157
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    return-void

    .line 111
    :pswitch_0
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 113
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_1
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 119
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_2
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_3
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :pswitch_4
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :pswitch_5
    iget-object v0, p0, Lcom/snapchat/android/Timber$1;->f:Ljava/lang/Throwable;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :pswitch_6
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-boolean v1, p0, Lcom/snapchat/android/Timber$1;->e:Z

    if-eqz v1, :cond_1

    .line 153
    iget-object v1, p0, Lcom/snapchat/android/Timber$1;->c:Lcom/snapchat/android/Timber$LogType;

    invoke-virtual {v1}, Lcom/snapchat/android/Timber$LogType;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/Timber$1;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/snapchat/android/util/debug/DebugCapturer;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
