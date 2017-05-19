#include "mydialog.h"

#include <QtGui>
#include <string>
#include <iostream>
#include <vector>
#include <cstdlib>

#include "genetic.h"

#include "constant.h"

using namespace std;

// 定义些常量

// 宽度
static const int LINE_EDIT_WIDTH = 195;

// 高度
static const int LINE_EDIT_HEIGHT = 30;
static const int NORMAL_BUTTON_HEIGHT = 50;
static const int LARGE_BUTTON_HEIGHT = 60;
static const int TEXT_EDIT_HEIGHT = 140;

static const int LABEL_HEIGHT = 25;
static const int MAIN_LAYOUT_MARGIN = 10;
// 字体
static const int SMALL_LABEL_FONT_SIZE = 14;
static const int LABEL_FONT_SIZE = 16;
static const int BUTTON_FONT_SIZE = 16;
static const int BUTTON_BIG_FONT_SIZE = 18;
static const int TEXT_FONT_SIZE = 14;

MyDialog::MyDialog(QWidget *parent) : QDialog(parent)
{
    // 窗口
    this->setWindowTitle("俊皓的遗传算法作业");
    
    // 函数Name
    current_problem_type = 0;
    functionNameData.push_back("问题一 （n无关, 点我切换问题）");
    functionNameData.push_back("问题二 （n = 2, 可修改）");

    // 图片
    QPixmap introImage_1;
    introImage_1.load(":/images/genetic_1.jpg");
    QPixmap introImage_2;
    introImage_2.load(":/images/genetic_2.jpg");
    imageData.push_back(introImage_1);
    imageData.push_back(introImage_2);

    imageLabel = new QLabel;
    imageLabel->setPixmap(introImage_1);
    imageLabel->setScaledContents(true);
    imageLabel->resize(imageLabel->pixmap()->size());

    // All Labels

    QFont *labelFont = new QFont;
    labelFont->setPointSize(LABEL_FONT_SIZE);
    QFont *smallLabelFont = new QFont;
    smallLabelFont->setPointSize(SMALL_LABEL_FONT_SIZE);

    QLabel *popsizeLabel = new QLabel("规模大小:");
    popsizeLabel->setFont(*labelFont);
    popsizeLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *precisionLabel = new QLabel("小数精度:");
    precisionLabel->setFont(*labelFont);
    precisionLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *p_crossLabel = new QLabel("杂交概率:");
    p_crossLabel->setFont(*labelFont);
    p_crossLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *p_mutateLabel = new QLabel("变异概率:");
    p_mutateLabel->setFont(*labelFont);
    p_mutateLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *iterationLabel = new QLabel("迭代次数:");
    iterationLabel->setFont(*labelFont);
    iterationLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *jLabel = new QLabel("j值:          ");
    jLabel->setFont(*labelFont);
    jLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *leftValLabel = new QLabel("区间左值:");
    leftValLabel->setFont(*labelFont);
    leftValLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *rightValLabel = new QLabel("区间右值:");
    rightValLabel->setFont(*labelFont);
    rightValLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *nLabel = new QLabel("n值:         ");
    nLabel->setFont(*labelFont);
    nLabel->setFixedHeight(LABEL_HEIGHT);

    QLabel *endingLabel = new QLabel("ai_assignment_genetic © 2017 Junhao (2014101027)");
    endingLabel->setFont(*smallLabelFont);
    endingLabel->setFixedHeight(SMALL_LABEL_FONT_SIZE);
    endingLabel->setAlignment(Qt::AlignHCenter);

    // All LineEdits
    QFont *textFont = new QFont;
    textFont->setPointSize(TEXT_FONT_SIZE);

    popsizeEdit = new QLineEdit;
    popsizeEdit->setFixedWidth(LINE_EDIT_WIDTH);
    popsizeEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    popsizeEdit->setFont(*textFont);
    popsizeEdit->setText(QString("%1").arg(POPSIZE));

    precisionEdit = new QLineEdit;
    precisionEdit->setFixedWidth(LINE_EDIT_WIDTH);
    precisionEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    precisionEdit->setFont(*textFont);
    precisionEdit->setText(QString("%1").arg(PRECISION));

    p_crossEdit = new QLineEdit;
    p_crossEdit->setFixedWidth(LINE_EDIT_WIDTH);
    p_crossEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    p_crossEdit->setFont(*textFont);
    p_crossEdit->setText(QString("%1").arg(P_CROSS));

    p_mutateEdit = new QLineEdit;
    p_mutateEdit->setFixedWidth(LINE_EDIT_WIDTH);
    p_mutateEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    p_mutateEdit->setFont(*textFont);
    p_mutateEdit->setText(QString("%1").arg(P_MUTATE));

    iterationEdit = new QLineEdit;
    iterationEdit->setFixedWidth(LINE_EDIT_WIDTH);
    iterationEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    iterationEdit->setFont(*textFont);
    iterationEdit->setText(QString("%1").arg(ITERATION_TIME));

    jEdit = new QLineEdit;
    jEdit->setFixedWidth(LINE_EDIT_WIDTH);
    jEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    jEdit->setFont(*textFont);
    jEdit->setText(QString("%1").arg(J));

    leftValEdit = new QLineEdit;
    leftValEdit->setFixedWidth(LINE_EDIT_WIDTH);
    leftValEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    leftValEdit->setFont(*textFont);
    leftValEdit->setText(QString("%1").arg(LEFT_VAL_1));

    rightValEdit = new QLineEdit;
    rightValEdit->setFixedWidth(LINE_EDIT_WIDTH);
    rightValEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    rightValEdit->setFont(*textFont);
    rightValEdit->setText(QString("%1").arg(RIGHT_VAL_1));

    nEdit = new QLineEdit;
    nEdit->setFixedWidth(LINE_EDIT_WIDTH * 2.5);
    nEdit->setFixedHeight(LINE_EDIT_HEIGHT);
    nEdit->setFont(*textFont);
    nEdit->setText(QString("%1").arg(N_2));
    nEdit->setReadOnly(true);

    // All Buttons
    QFont *btnFont = new QFont;
    btnFont->setPointSize(BUTTON_FONT_SIZE);
    QFont *btnBigFont = new QFont;
    btnBigFont->setPointSize(BUTTON_BIG_FONT_SIZE);

    functionBtn = new QPushButton(functionNameData[0]);
    functionBtn->setFont(*btnFont);
    functionBtn->setFixedHeight(NORMAL_BUTTON_HEIGHT);

    QPushButton *resetBtn = new QPushButton("重置数据");
    resetBtn->setFont(*btnFont);
    resetBtn->setFixedHeight(NORMAL_BUTTON_HEIGHT);

    QPushButton *trainBtn = new QPushButton("训练");
    trainBtn->setFont(*btnBigFont);
    trainBtn->setFixedHeight(LARGE_BUTTON_HEIGHT);

    // Layout
    QVBoxLayout *mainLayout = new QVBoxLayout;
    QHBoxLayout *subFunctionLayout = new QHBoxLayout;
    QHBoxLayout *subInputLayout1 = new QHBoxLayout;
    QHBoxLayout *subInputLayout2 = new 
    QHBoxLayout;
    QHBoxLayout *subInputLayout3 = new QHBoxLayout;
    QHBoxLayout *subInputLayout4 = new QHBoxLayout;
    QHBoxLayout *subInputLayout5 = new QHBoxLayout;
    QHBoxLayout *subOutputLayout = new QHBoxLayout;
    QHBoxLayout *subControlLayout = new QHBoxLayout;

    mainLayout->setMargin(MAIN_LAYOUT_MARGIN);
    subFunctionLayout->setMargin(0);
    subFunctionLayout->setSpacing(MAIN_LAYOUT_MARGIN);
    subInputLayout1->setMargin(0);
    subInputLayout1->setSpacing(MAIN_LAYOUT_MARGIN);
    subInputLayout2->setMargin(0);
    subInputLayout2->setSpacing(MAIN_LAYOUT_MARGIN);
    subInputLayout3->setMargin(0);
    subInputLayout3->setSpacing(MAIN_LAYOUT_MARGIN);
    subInputLayout4->setMargin(0);
    subInputLayout4->setSpacing(MAIN_LAYOUT_MARGIN);
    subInputLayout5->setMargin(0);
    subInputLayout5->setSpacing(MAIN_LAYOUT_MARGIN);
    subOutputLayout->setMargin(0);
    subOutputLayout->setSpacing(MAIN_LAYOUT_MARGIN);
    subControlLayout->setMargin(0);
    subControlLayout->setSpacing(MAIN_LAYOUT_MARGIN);

    // sub-layout
    subFunctionLayout->addWidget(functionBtn);
    subFunctionLayout->addWidget(resetBtn);

    subInputLayout1->addWidget(nLabel);
    subInputLayout1->addWidget(nEdit);
    subInputLayout1->addStretch();

    subInputLayout2->addWidget(leftValLabel);
    subInputLayout2->addWidget(leftValEdit);
    subInputLayout2->addStretch();
    subInputLayout2->addWidget(rightValLabel);
    subInputLayout2->addWidget(rightValEdit);

    subInputLayout3->addWidget(jLabel);
    subInputLayout3->addWidget(jEdit);
    subInputLayout3->addStretch();
    subInputLayout3->addWidget(popsizeLabel);
    subInputLayout3->addWidget(popsizeEdit);

    subInputLayout4->addWidget(iterationLabel);
    subInputLayout4->addWidget(iterationEdit);
    subInputLayout4->addStretch();
    subInputLayout4->addWidget(precisionLabel);
    subInputLayout4->addWidget(precisionEdit);

    subInputLayout5->addWidget(p_crossLabel);
    subInputLayout5->addWidget(p_crossEdit);
    subInputLayout5->addStretch();
    subInputLayout5->addWidget(p_mutateLabel);
    subInputLayout5->addWidget(p_mutateEdit);


    // main-layout
    mainLayout->addWidget(imageLabel);
    mainLayout->addLayout(subFunctionLayout);
    mainLayout->addLayout(subInputLayout1);
    mainLayout->addLayout(subInputLayout2);
    mainLayout->addLayout(subInputLayout3);
    mainLayout->addLayout(subInputLayout4);

    // mainLayout->addWidget(trainingScrollArea);

    // mainLayout->addLayout(subPredictLayout);
    // mainLayout->addWidget(predictScrollArea);

    mainLayout->addWidget(trainBtn);
    mainLayout->addWidget(endingLabel);

    this->setLayout(mainLayout);

    this->show();

    // 重新调整大小
    this->adjustSize();
    // 这样可以使得窗口大小不可以变化
    this->setMinimumSize(this->size());
    this->setMaximumSize(this->size());

    // 设置连接槽, 按钮事件
    connect(trainBtn, SIGNAL(clicked()), this, SLOT(TrainBtnClicked()));
    connect(resetBtn, SIGNAL(clicked()), this, SLOT(ResetBtnClicked()));
    connect(functionBtn, SIGNAL(clicked()), this, SLOT(FunctionBtnClicked()));
}


void MyDialog::SwitchFunction()
{
    current_problem_type = (current_problem_type == 0) ? 1 : 0;

    functionBtn->setText(functionNameData[current_problem_type]);
    imageLabel->setPixmap(imageData[current_problem_type]);

    if (current_problem_type == 0)
    {
        leftValEdit->setText(QString("%1").arg(LEFT_VAL_1));
        rightValEdit->setText(QString("%1").arg(RIGHT_VAL_1));
        nEdit->setReadOnly(true);
    }
    else
    {
        leftValEdit->setText(QString("%1").arg(LEFT_VAL_2));
        rightValEdit->setText(QString("%1").arg(RIGHT_VAL_2));
        nEdit->setReadOnly(false);
    }
}

// Button Clicked 按钮事件
void MyDialog::TrainBtnClicked()
{
    Genetic genetic;
    genetic.Train(current_problem_type);

    /* 设置参数 */
    genetic.SetPopsize(atoi(popsizeEdit->text().toStdString().c_str()));
    genetic.SetPrecision(atoi(precisionEdit->text().toStdString().c_str()));
    genetic.SetPcross(atof(p_crossEdit->text().toStdString().c_str()));
    genetic.SetPmutate(atof(p_mutateEdit->text().toStdString().c_str()));
    genetic.SetLeftVal(atof(leftValEdit->text().toStdString().c_str()));
    genetic.SetRightVal(atof(rightValEdit->text().toStdString().c_str()));
    genetic.SetIterationTime(atoi(iterationEdit->text().toStdString().c_str()));
    genetic.SetJ(atof(jEdit->text().toStdString().c_str()));
    genetic.SetN(atoi(nEdit->text().toStdString().c_str()));

    // cout<<"--------"<<atoi(popsizeEdit->text().toStdString().c_str())<<endl;
}

void MyDialog::FunctionBtnClicked()
{
    SwitchFunction();
}

void MyDialog::ResetBtnClicked()
{

}

// // 训练模型清空
// void MyDialog::onTrainingClearButtonClicked()
// {
//     bayes = NULL;
//     trainingResultLabel->setText("<空>");
//     trainingResultLabel->adjustSize();
// }


// // 消息框
// void MyDialog::criticalMessage(QString msg)
// {
//     QMessageBox::StandardButton reply;
//     reply = QMessageBox::critical(this, "错误",
//                                   msg,
//                                   QMessageBox::Ok);
// }