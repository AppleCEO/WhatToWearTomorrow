//
//  OnboardingViewController.swift
//  WhatToWearTomorrow
//
//  Created by 도미닉 on 10/14/25.
//

import UIKit
import ReactorKit
import RxCocoa
import SnapKit

final class OnboardingViewController: UIViewController {
    private let logoImageView = UIImageView()
    private let requirementLabel = UILabel()
    private let requirementButton = UIButton()
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureAutolayout()
        configureUI()
    }

    func bind(reactor: OnboardingViewReactor) {
        requirementButton.rx.tap
            .map { .nextButtonTaped }
            .bind(to: reactor.action)
            .disposed(by: disposeBag)
    }

    private func configureAutolayout() {
        [logoImageView, requirementLabel, requirementButton].forEach {
            view.addSubview($0)
        }
        logoImageView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(150)
            $0.size.equalTo(200)
        }
        requirementLabel.snp.makeConstraints {
            $0.bottom.equalTo(requirementButton.snp.top).offset(20)
            $0.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
        }
        requirementButton.snp.makeConstraints {
            $0.bottom.equalTo(view.safeAreaLayoutGuide).inset(50)
            $0.horizontalEdges.equalTo(view.safeAreaLayoutGuide).inset(20)
            $0.height.equalTo(50)
        }
    }
    
    private func configureUI() {
        logoImageView.image = UIImage(named: "logo")
        requirementLabel.text = "위치 기반 날씨를 조회하기 위해 위치 권한이 필요합니다."
        requirementButton.backgroundColor = .cyan
        requirementButton.setTitle("다음", for: .normal)
    }
}
